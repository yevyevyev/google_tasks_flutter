import 'package:flutter_riverpod/flutter_riverpod.dart';

enum RemoteStatus {
  draft,
  pending,
  done;

  AsyncValue<T> asyncValue<T>(T data) {
    switch (this) {
      case draft:
      case done:
        return AsyncValue.data(data);

      case pending:
        return AsyncValue<T>.loading().copyWithPrevious(AsyncValue.data(data));
    }
  }
}
