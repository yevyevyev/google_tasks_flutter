import 'package:better_gtask/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<TaskListRoute>(path: TaskListRoute.path, routes: [TypedGoRoute<TasksRoute>(path: TasksRoute.path)])
class TaskListRoute extends GoRouteData {
  const TaskListRoute();

  static const path = '/';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const NoTransitionPage(child: TaskListScreen());
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

class TasksRoute extends GoRouteData {
  const TasksRoute({required this.taskListId});

  static const path = ':taskListId/tasks';

  final String taskListId;

  @override
  Widget build(BuildContext context, GoRouterState state) => TasksScreen(
        taskListId: taskListId,
      );
}
