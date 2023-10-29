import 'package:better_gtask/state/undo_mixin.dart';
import 'package:flutter/material.dart';

class UndoSnackBar<T> extends SnackBar {
  UndoSnackBar({
    super.key,
    required UndoToken<T> undoToken,
    required String title,
  }) : super(
          duration: undoToken.duration,
          content: Text(title),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () => undoToken.undo(),
          ),
        );
}
