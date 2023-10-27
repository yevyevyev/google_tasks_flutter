// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskApiHash() => r'218c6c47b64b16d449f18cb3826bbdcc3ad72229';

/// See also [taskApi].
@ProviderFor(taskApi)
final taskApiProvider = AutoDisposeFutureProvider<TasksApi>.internal(
  taskApi,
  name: r'taskApiProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$taskApiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TaskApiRef = AutoDisposeFutureProviderRef<TasksApi>;
String _$fetchTaskListsHash() => r'73b277bc353ff67ec7aa4899e04f5a798a036f3a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchTaskLists].
@ProviderFor(fetchTaskLists)
const fetchTaskListsProvider = FetchTaskListsFamily();

/// See also [fetchTaskLists].
class FetchTaskListsFamily extends Family<AsyncValue<TaskLists>> {
  /// See also [fetchTaskLists].
  const FetchTaskListsFamily();

  /// See also [fetchTaskLists].
  FetchTaskListsProvider call({
    String? nextPageToken,
  }) {
    return FetchTaskListsProvider(
      nextPageToken: nextPageToken,
    );
  }

  @override
  FetchTaskListsProvider getProviderOverride(
    covariant FetchTaskListsProvider provider,
  ) {
    return call(
      nextPageToken: provider.nextPageToken,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchTaskListsProvider';
}

/// See also [fetchTaskLists].
class FetchTaskListsProvider extends AutoDisposeFutureProvider<TaskLists> {
  /// See also [fetchTaskLists].
  FetchTaskListsProvider({
    String? nextPageToken,
  }) : this._internal(
          (ref) => fetchTaskLists(
            ref as FetchTaskListsRef,
            nextPageToken: nextPageToken,
          ),
          from: fetchTaskListsProvider,
          name: r'fetchTaskListsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTaskListsHash,
          dependencies: FetchTaskListsFamily._dependencies,
          allTransitiveDependencies:
              FetchTaskListsFamily._allTransitiveDependencies,
          nextPageToken: nextPageToken,
        );

  FetchTaskListsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.nextPageToken,
  }) : super.internal();

  final String? nextPageToken;

  @override
  Override overrideWith(
    FutureOr<TaskLists> Function(FetchTaskListsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTaskListsProvider._internal(
        (ref) => create(ref as FetchTaskListsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        nextPageToken: nextPageToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TaskLists> createElement() {
    return _FetchTaskListsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTaskListsProvider &&
        other.nextPageToken == nextPageToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nextPageToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchTaskListsRef on AutoDisposeFutureProviderRef<TaskLists> {
  /// The parameter `nextPageToken` of this provider.
  String? get nextPageToken;
}

class _FetchTaskListsProviderElement
    extends AutoDisposeFutureProviderElement<TaskLists> with FetchTaskListsRef {
  _FetchTaskListsProviderElement(super.provider);

  @override
  String? get nextPageToken => (origin as FetchTaskListsProvider).nextPageToken;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
