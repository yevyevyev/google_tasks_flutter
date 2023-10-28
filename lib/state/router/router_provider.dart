import 'package:better_gtask/state/router/router.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final routerListenable = ref.watch(routerListenableProvider.notifier);
  return GoRouter(
    initialLocation: SplashRoute.path,
    routes: $appRoutes,
    redirect: routerListenable.redirect,
    refreshListenable: routerListenable,
  );
}
