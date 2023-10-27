// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpClientHash() => r'fa0470f51f85115112cd6141e1aa6e3503950c5e';

/// See also [httpClient].
@ProviderFor(httpClient)
final httpClientProvider = AutoDisposeFutureProvider<http.Client>.internal(
  httpClient,
  name: r'httpClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$httpClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HttpClientRef = AutoDisposeFutureProviderRef<http.Client>;
String _$authHash() => r'1149ea97ccebbf872ca034dadd259d956cdbdec9';

/// See also [Auth].
@ProviderFor(Auth)
final authProvider =
    AutoDisposeAsyncNotifierProvider<Auth, GoogleSignInAccount?>.internal(
  Auth.new,
  name: r'authProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Auth = AutoDisposeAsyncNotifier<GoogleSignInAccount?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
