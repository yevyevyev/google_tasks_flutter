import 'package:better_gtask/state/router_listenable.dart';
import 'package:better_gtask/state/routes.dart';
import 'package:better_gtask/state/state.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

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
