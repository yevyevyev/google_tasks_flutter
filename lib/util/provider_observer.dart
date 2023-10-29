// ignore_for_file: avoid_print

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase<Object?> provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    print('${provider.name} update');
    print('from ${resolveMessage(previousValue)}');
    print('to ${resolveMessage(newValue)}');
    print('\n\n\n');
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }

  String resolveMessage(Object? obj) {
    if (obj == null) {
      return 'null';
    }

    if (obj is AsyncValue) {
      var msg = '';
      if (obj is AsyncLoading) {
        msg = 'Loading ';
      }

      if (obj is AsyncError) {
        msg = 'Error ';
      }

      if (obj.hasValue) {
        msg += resolveValue(obj.requireValue);
      }

      return msg;
    }

    return obj.toString();
  }

  String resolveValue(Object? value) {
    if (value is List) {
      return '[${value.length}]';
    }
    return value.toString();
  }
}
