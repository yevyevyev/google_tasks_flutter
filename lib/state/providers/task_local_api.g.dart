// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_local_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isarHash() => r'ea010a03ca2728fbc45010141942e4471235ea7c';

/// See also [isar].
@ProviderFor(isar)
final isarProvider = AutoDisposeProvider<Isar>.internal(
  isar,
  name: r'isarProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isarHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef IsarRef = AutoDisposeProviderRef<Isar>;
String _$fetchLocalTaskListHash() =>
    r'd447cfa12b7a2ae47a216e29d16bf2b0cf73956b';

/// See also [fetchLocalTaskList].
@ProviderFor(fetchLocalTaskList)
final fetchLocalTaskListProvider =
    AutoDisposeStreamProvider<List<TaskList>>.internal(
  fetchLocalTaskList,
  name: r'fetchLocalTaskListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchLocalTaskListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchLocalTaskListRef = AutoDisposeStreamProviderRef<List<TaskList>>;
String _$fetchLocalTasksHash() => r'c9e0725fc386b23f5e111d5c7bdbfe3b358b9236';

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

/// See also [fetchLocalTasks].
@ProviderFor(fetchLocalTasks)
const fetchLocalTasksProvider = FetchLocalTasksFamily();

/// See also [fetchLocalTasks].
class FetchLocalTasksFamily extends Family<AsyncValue<List<Tasks>>> {
  /// See also [fetchLocalTasks].
  const FetchLocalTasksFamily();

  /// See also [fetchLocalTasks].
  FetchLocalTasksProvider call({
    required String taskListId,
  }) {
    return FetchLocalTasksProvider(
      taskListId: taskListId,
    );
  }

  @override
  FetchLocalTasksProvider getProviderOverride(
    covariant FetchLocalTasksProvider provider,
  ) {
    return call(
      taskListId: provider.taskListId,
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
  String? get name => r'fetchLocalTasksProvider';
}

/// See also [fetchLocalTasks].
class FetchLocalTasksProvider extends AutoDisposeStreamProvider<List<Tasks>> {
  /// See also [fetchLocalTasks].
  FetchLocalTasksProvider({
    required String taskListId,
  }) : this._internal(
          (ref) => fetchLocalTasks(
            ref as FetchLocalTasksRef,
            taskListId: taskListId,
          ),
          from: fetchLocalTasksProvider,
          name: r'fetchLocalTasksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchLocalTasksHash,
          dependencies: FetchLocalTasksFamily._dependencies,
          allTransitiveDependencies:
              FetchLocalTasksFamily._allTransitiveDependencies,
          taskListId: taskListId,
        );

  FetchLocalTasksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskListId,
  }) : super.internal();

  final String taskListId;

  @override
  Override overrideWith(
    Stream<List<Tasks>> Function(FetchLocalTasksRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchLocalTasksProvider._internal(
        (ref) => create(ref as FetchLocalTasksRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskListId: taskListId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<Tasks>> createElement() {
    return _FetchLocalTasksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchLocalTasksProvider && other.taskListId == taskListId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskListId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchLocalTasksRef on AutoDisposeStreamProviderRef<List<Tasks>> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;
}

class _FetchLocalTasksProviderElement
    extends AutoDisposeStreamProviderElement<List<Tasks>>
    with FetchLocalTasksRef {
  _FetchLocalTasksProviderElement(super.provider);

  @override
  String get taskListId => (origin as FetchLocalTasksProvider).taskListId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
