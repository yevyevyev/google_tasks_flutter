import 'package:better_gtask/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: HomeRoute.path,
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const NoTransitionPage(child: HomeScreen());
}

@TypedGoRoute<AuthRoute>(
  path: AuthRoute.path,
)
class AuthRoute extends GoRouteData {
  const AuthRoute();

  static const path = '/auth';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const NoTransitionPage(child: AuthScreen());
}

@TypedGoRoute<SplashRoute>(
  path: SplashRoute.path,
)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  static const path = '/splash';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const NoTransitionPage(child: SplashScreen());
}
