import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin UndoMixin<T> on AutoDisposeAsyncNotifier<T> {
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
