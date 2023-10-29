// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_remote.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskListRemoteHash() => r'bde7e7a5a4282d4fc06eb5ccb91587d915409da3';

/// See also [taskListRemote].
@ProviderFor(taskListRemote)
final taskListRemoteProvider =
    AutoDisposeFutureProvider<TaskListsRemoteRepository>.internal(
  taskListRemote,
  name: r'taskListRemoteProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskListRemoteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TaskListRemoteRef
    = AutoDisposeFutureProviderRef<TaskListsRemoteRepository>;
String _$fetchRemoteTaskListsHash() =>
    r'1f797bcf5d5c2f16183f8e3b4d551e62001f6d6b';

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

/// See also [fetchRemoteTaskLists].
@ProviderFor(fetchRemoteTaskLists)
const fetchRemoteTaskListsProvider = FetchRemoteTaskListsFamily();

/// See also [fetchRemoteTaskLists].
class FetchRemoteTaskListsFamily
    extends Family<AsyncValue<Paginated<TaskList, String>>> {
  /// See also [fetchRemoteTaskLists].
  const FetchRemoteTaskListsFamily();

  /// See also [fetchRemoteTaskLists].
  FetchRemoteTaskListsProvider call({
    String? offset,
  }) {
    return FetchRemoteTaskListsProvider(
      offset: offset,
    );
  }

  @override
  FetchRemoteTaskListsProvider getProviderOverride(
    covariant FetchRemoteTaskListsProvider provider,
  ) {
    return call(
      offset: provider.offset,
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
  String? get name => r'fetchRemoteTaskListsProvider';
}

/// See also [fetchRemoteTaskLists].
class FetchRemoteTaskListsProvider
    extends AutoDisposeFutureProvider<Paginated<TaskList, String>> {
  /// See also [fetchRemoteTaskLists].
  FetchRemoteTaskListsProvider({
    String? offset,
  }) : this._internal(
          (ref) => fetchRemoteTaskLists(
            ref as FetchRemoteTaskListsRef,
            offset: offset,
          ),
          from: fetchRemoteTaskListsProvider,
          name: r'fetchRemoteTaskListsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRemoteTaskListsHash,
          dependencies: FetchRemoteTaskListsFamily._dependencies,
          allTransitiveDependencies:
              FetchRemoteTaskListsFamily._allTransitiveDependencies,
          offset: offset,
        );

  FetchRemoteTaskListsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.offset,
  }) : super.internal();

  final String? offset;

  @override
  Override overrideWith(
    FutureOr<Paginated<TaskList, String>> Function(
            FetchRemoteTaskListsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRemoteTaskListsProvider._internal(
        (ref) => create(ref as FetchRemoteTaskListsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Paginated<TaskList, String>>
      createElement() {
    return _FetchRemoteTaskListsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRemoteTaskListsProvider && other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRemoteTaskListsRef
    on AutoDisposeFutureProviderRef<Paginated<TaskList, String>> {
  /// The parameter `offset` of this provider.
  String? get offset;
}

class _FetchRemoteTaskListsProviderElement
    extends AutoDisposeFutureProviderElement<Paginated<TaskList, String>>
    with FetchRemoteTaskListsRef {
  _FetchRemoteTaskListsProviderElement(super.provider);

  @override
  String? get offset => (origin as FetchRemoteTaskListsProvider).offset;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
