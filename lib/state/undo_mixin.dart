import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

// ignore: invalid_use_of_internal_member
mixin UndoMixin<T> on BuildlessAutoDisposeAsyncNotifier<T> {
  AsyncValue<T>? _previous;

  @override
  set state(AsyncValue<T> newState) {
    _previous = super.state;
    super.state = newState;
  }

  void undo() {
    if (_previous == null) {
      return;
    }

    super.state = _previous!;
    _previous = null;
  }
}

class UndoToken<T> {
  UndoToken(
    this._undoMixin, {
    required void Function() action,
    required this.duration,
  }) : timer = Timer(duration, () {
          action();
        });

  void undo() {
    _undoMixin.undo();
    timer.cancel();
  }

  final Timer timer;
  final Duration duration;
  final UndoMixin<T> _undoMixin;
}
