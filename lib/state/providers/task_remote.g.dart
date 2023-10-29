// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_remote.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskListRemoteHash() => r'4894ce3a3724606a9ade8b6f65b8b62c30ffb4ca';

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
String _$tasksRemoteHash() => r'17a0cc9fa3ce48e2859f3c1ae2060eb67564c32f';

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

/// See also [tasksRemote].
@ProviderFor(tasksRemote)
const tasksRemoteProvider = TasksRemoteFamily();

/// See also [tasksRemote].
class TasksRemoteFamily extends Family<AsyncValue<TaskRemoteRepository>> {
  /// See also [tasksRemote].
  const TasksRemoteFamily();

  /// See also [tasksRemote].
  TasksRemoteProvider call({
    required String taskListId,
  }) {
    return TasksRemoteProvider(
      taskListId: taskListId,
    );
  }

  @override
  TasksRemoteProvider getProviderOverride(
    covariant TasksRemoteProvider provider,
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
  String? get name => r'tasksRemoteProvider';
}

/// See also [tasksRemote].
class TasksRemoteProvider
    extends AutoDisposeFutureProvider<TaskRemoteRepository> {
  /// See also [tasksRemote].
  TasksRemoteProvider({
    required String taskListId,
  }) : this._internal(
          (ref) => tasksRemote(
            ref as TasksRemoteRef,
            taskListId: taskListId,
          ),
          from: tasksRemoteProvider,
          name: r'tasksRemoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tasksRemoteHash,
          dependencies: TasksRemoteFamily._dependencies,
          allTransitiveDependencies:
              TasksRemoteFamily._allTransitiveDependencies,
          taskListId: taskListId,
        );

  TasksRemoteProvider._internal(
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
    FutureOr<TaskRemoteRepository> Function(TasksRemoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TasksRemoteProvider._internal(
        (ref) => create(ref as TasksRemoteRef),
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
  AutoDisposeFutureProviderElement<TaskRemoteRepository> createElement() {
    return _TasksRemoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TasksRemoteProvider && other.taskListId == taskListId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskListId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TasksRemoteRef on AutoDisposeFutureProviderRef<TaskRemoteRepository> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;
}

class _TasksRemoteProviderElement
    extends AutoDisposeFutureProviderElement<TaskRemoteRepository>
    with TasksRemoteRef {
  _TasksRemoteProviderElement(super.provider);

  @override
  String get taskListId => (origin as TasksRemoteProvider).taskListId;
}

String _$fetchRemoteTaskListsHash() =>
    r'1f797bcf5d5c2f16183f8e3b4d551e62001f6d6b';

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

String _$fetchRemoteTasksHash() => r'8120f8bb2400386d98a5f54af3c68b88532d36e9';

/// See also [fetchRemoteTasks].
@ProviderFor(fetchRemoteTasks)
const fetchRemoteTasksProvider = FetchRemoteTasksFamily();

/// See also [fetchRemoteTasks].
class FetchRemoteTasksFamily
    extends Family<AsyncValue<Paginated<Task, String>>> {
  /// See also [fetchRemoteTasks].
  const FetchRemoteTasksFamily();

  /// See also [fetchRemoteTasks].
  FetchRemoteTasksProvider call({
    required String taskListId,
    String? offset,
  }) {
    return FetchRemoteTasksProvider(
      taskListId: taskListId,
      offset: offset,
    );
  }

  @override
  FetchRemoteTasksProvider getProviderOverride(
    covariant FetchRemoteTasksProvider provider,
  ) {
    return call(
      taskListId: provider.taskListId,
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
  String? get name => r'fetchRemoteTasksProvider';
}

/// See also [fetchRemoteTasks].
class FetchRemoteTasksProvider
    extends AutoDisposeFutureProvider<Paginated<Task, String>> {
  /// See also [fetchRemoteTasks].
  FetchRemoteTasksProvider({
    required String taskListId,
    String? offset,
  }) : this._internal(
          (ref) => fetchRemoteTasks(
            ref as FetchRemoteTasksRef,
            taskListId: taskListId,
            offset: offset,
          ),
          from: fetchRemoteTasksProvider,
          name: r'fetchRemoteTasksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRemoteTasksHash,
          dependencies: FetchRemoteTasksFamily._dependencies,
          allTransitiveDependencies:
              FetchRemoteTasksFamily._allTransitiveDependencies,
          taskListId: taskListId,
          offset: offset,
        );

  FetchRemoteTasksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskListId,
    required this.offset,
  }) : super.internal();

  final String taskListId;
  final String? offset;

  @override
  Override overrideWith(
    FutureOr<Paginated<Task, String>> Function(FetchRemoteTasksRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRemoteTasksProvider._internal(
        (ref) => create(ref as FetchRemoteTasksRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        taskListId: taskListId,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Paginated<Task, String>> createElement() {
    return _FetchRemoteTasksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRemoteTasksProvider &&
        other.taskListId == taskListId &&
        other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskListId.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRemoteTasksRef
    on AutoDisposeFutureProviderRef<Paginated<Task, String>> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;

  /// The parameter `offset` of this provider.
  String? get offset;
}

class _FetchRemoteTasksProviderElement
    extends AutoDisposeFutureProviderElement<Paginated<Task, String>>
    with FetchRemoteTasksRef {
  _FetchRemoteTasksProviderElement(super.provider);

  @override
  String get taskListId => (origin as FetchRemoteTasksProvider).taskListId;
  @override
  String? get offset => (origin as FetchRemoteTasksProvider).offset;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
