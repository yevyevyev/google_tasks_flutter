// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_local.dart';

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
String _$taskListLocalHash() => r'fcdbe02f25a02986228e8a36d2b6f9c17a1e4f18';

/// See also [taskListLocal].
@ProviderFor(taskListLocal)
final taskListLocalProvider =
    AutoDisposeProvider<TaskListsLocalRepository>.internal(
  taskListLocal,
  name: r'taskListLocalProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskListLocalHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TaskListLocalRef = AutoDisposeProviderRef<TaskListsLocalRepository>;
String _$taskLocalHash() => r'602a2d947b2f61d7a9b8509200aa39dc6088993c';

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

/// See also [taskLocal].
@ProviderFor(taskLocal)
const taskLocalProvider = TaskLocalFamily();

/// See also [taskLocal].
class TaskLocalFamily extends Family<TaskLocalRepository> {
  /// See also [taskLocal].
  const TaskLocalFamily();

  /// See also [taskLocal].
  TaskLocalProvider call({
    required String taskListId,
  }) {
    return TaskLocalProvider(
      taskListId: taskListId,
    );
  }

  @override
  TaskLocalProvider getProviderOverride(
    covariant TaskLocalProvider provider,
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
  String? get name => r'taskLocalProvider';
}

/// See also [taskLocal].
class TaskLocalProvider extends AutoDisposeProvider<TaskLocalRepository> {
  /// See also [taskLocal].
  TaskLocalProvider({
    required String taskListId,
  }) : this._internal(
          (ref) => taskLocal(
            ref as TaskLocalRef,
            taskListId: taskListId,
          ),
          from: taskLocalProvider,
          name: r'taskLocalProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$taskLocalHash,
          dependencies: TaskLocalFamily._dependencies,
          allTransitiveDependencies: TaskLocalFamily._allTransitiveDependencies,
          taskListId: taskListId,
        );

  TaskLocalProvider._internal(
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
    TaskLocalRepository Function(TaskLocalRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TaskLocalProvider._internal(
        (ref) => create(ref as TaskLocalRef),
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
  AutoDisposeProviderElement<TaskLocalRepository> createElement() {
    return _TaskLocalProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskLocalProvider && other.taskListId == taskListId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskListId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TaskLocalRef on AutoDisposeProviderRef<TaskLocalRepository> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;
}

class _TaskLocalProviderElement
    extends AutoDisposeProviderElement<TaskLocalRepository> with TaskLocalRef {
  _TaskLocalProviderElement(super.provider);

  @override
  String get taskListId => (origin as TaskLocalProvider).taskListId;
}

String _$fetchLocalTaskListHash() =>
    r'da15ca822e817fe822d5edb726f5219cd2b25a90';

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
String _$fetchLocalTasksHash() => r'c5f5a0dcfb001966b718443dcddc959ad1968d88';

/// See also [fetchLocalTasks].
@ProviderFor(fetchLocalTasks)
const fetchLocalTasksProvider = FetchLocalTasksFamily();

/// See also [fetchLocalTasks].
class FetchLocalTasksFamily extends Family<AsyncValue<List<Task>>> {
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
class FetchLocalTasksProvider extends AutoDisposeStreamProvider<List<Task>> {
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
    Stream<List<Task>> Function(FetchLocalTasksRef provider) create,
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
  AutoDisposeStreamProviderElement<List<Task>> createElement() {
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

mixin FetchLocalTasksRef on AutoDisposeStreamProviderRef<List<Task>> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;
}

class _FetchLocalTasksProviderElement
    extends AutoDisposeStreamProviderElement<List<Task>>
    with FetchLocalTasksRef {
  _FetchLocalTasksProviderElement(super.provider);

  @override
  String get taskListId => (origin as FetchLocalTasksProvider).taskListId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
