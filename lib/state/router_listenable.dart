import 'package:better_gtask/state/state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_listenable.g.dart';

@riverpod
class RouterListenable extends _$RouterListenable implements Listenable {
  VoidCallback? _routerListener;
  bool _isAuth = false;

  @override
  Future<void> build() async {
    _isAuth = await ref.watch(authProvider.selectAsync((data) => data != null));

    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      _routerListener?.call();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;

    final location = state.uri.path;
    final isSplash = location == SplashRoute.path;

    if (isSplash) {
      return _isAuth ? HomeRoute.path : AuthRoute.path;
    }

    final isLoggingIn = location == AuthRoute.path;
    if (isLoggingIn) return _isAuth ? HomeRoute.path : null;

    return _isAuth ? null : SplashRoute.path;
  }

  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}
