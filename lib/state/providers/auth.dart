import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:googleapis/tasks/v1.dart' as g;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:http/http.dart' as http;

part 'auth.g.dart';

@riverpod
class Auth extends _$Auth {
  final _googleSignIn = GoogleSignIn(scopes: [g.TasksApi.tasksScope]);

  @override
  FutureOr<GoogleSignInAccount?> build() {
    final listener = _googleSignIn.onCurrentUserChanged.listen(_handleGoogleUserChanged);
    ref.onDispose(() => listener.cancel());
    return _googleSignIn.signInSilently();
  }

  void signIn() => _googleSignIn.signIn();

  void _handleGoogleUserChanged(GoogleSignInAccount? user) {
    state = AsyncValue.data(user);
  }

  Future<http.Client> _authClient() async {
    assert(state.hasValue);
    assert(state.requireValue != null);

    final client = await _googleSignIn.authenticatedClient();
    return client!;
  }
}

@riverpod
Future<http.Client> httpClient(HttpClientRef ref) {
  final auth = ref.watch(authProvider.notifier);
  return auth._authClient();
}
