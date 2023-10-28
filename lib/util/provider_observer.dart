import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase<Object?> provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    print('${provider.name} update');
    print('from $previousValue');
    print('to $newValue');
    print('\n\n\n');
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }
}
