// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$taskListStoreHash() => r'8e497178929f2bb5a6e30d086efcd6a5c6144a55';

/// See also [taskListStore].
@ProviderFor(taskListStore)
final taskListStoreProvider = AutoDisposeFutureProvider<TaskListStore>.internal(
  taskListStore,
  name: r'taskListStoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$taskListStoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TaskListStoreRef = AutoDisposeFutureProviderRef<TaskListStore>;
String _$taskStoreHash() => r'd4527022a4cd51efadf1124e59ff3f4f47217ab1';

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

/// See also [taskStore].
@ProviderFor(taskStore)
const taskStoreProvider = TaskStoreFamily();

/// See also [taskStore].
class TaskStoreFamily extends Family<AsyncValue<TaskStore>> {
  /// See also [taskStore].
  const TaskStoreFamily();

  /// See also [taskStore].
  TaskStoreProvider call({
    required String taskListId,
  }) {
    return TaskStoreProvider(
      taskListId: taskListId,
    );
  }

  @override
  TaskStoreProvider getProviderOverride(
    covariant TaskStoreProvider provider,
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
  String? get name => r'taskStoreProvider';
}

/// See also [taskStore].
class TaskStoreProvider extends AutoDisposeFutureProvider<TaskStore> {
  /// See also [taskStore].
  TaskStoreProvider({
    required String taskListId,
  }) : this._internal(
          (ref) => taskStore(
            ref as TaskStoreRef,
            taskListId: taskListId,
          ),
          from: taskStoreProvider,
          name: r'taskStoreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$taskStoreHash,
          dependencies: TaskStoreFamily._dependencies,
          allTransitiveDependencies: TaskStoreFamily._allTransitiveDependencies,
          taskListId: taskListId,
        );

  TaskStoreProvider._internal(
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
    FutureOr<TaskStore> Function(TaskStoreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TaskStoreProvider._internal(
        (ref) => create(ref as TaskStoreRef),
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
  AutoDisposeFutureProviderElement<TaskStore> createElement() {
    return _TaskStoreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskStoreProvider && other.taskListId == taskListId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskListId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TaskStoreRef on AutoDisposeFutureProviderRef<TaskStore> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;
}

class _TaskStoreProviderElement
    extends AutoDisposeFutureProviderElement<TaskStore> with TaskStoreRef {
  _TaskStoreProviderElement(super.provider);

  @override
  String get taskListId => (origin as TaskStoreProvider).taskListId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
