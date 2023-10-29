// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tasksHash() => r'0e8fdc79788eb67d38fe2e79fb61abf4ac667aac';

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

abstract class _$Tasks extends BuildlessAutoDisposeAsyncNotifier<List<Task>> {
  late final String taskListId;

  FutureOr<List<Task>> build({
    required String taskListId,
  });
}

/// See also [Tasks].
@ProviderFor(Tasks)
const tasksProvider = TasksFamily();

/// See also [Tasks].
class TasksFamily extends Family<AsyncValue<List<Task>>> {
  /// See also [Tasks].
  const TasksFamily();

  /// See also [Tasks].
  TasksProvider call({
    required String taskListId,
  }) {
    return TasksProvider(
      taskListId: taskListId,
    );
  }

  @override
  TasksProvider getProviderOverride(
    covariant TasksProvider provider,
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
  String? get name => r'tasksProvider';
}

/// See also [Tasks].
class TasksProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Tasks, List<Task>> {
  /// See also [Tasks].
  TasksProvider({
    required String taskListId,
  }) : this._internal(
          () => Tasks()..taskListId = taskListId,
          from: tasksProvider,
          name: r'tasksProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tasksHash,
          dependencies: TasksFamily._dependencies,
          allTransitiveDependencies: TasksFamily._allTransitiveDependencies,
          taskListId: taskListId,
        );

  TasksProvider._internal(
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
  FutureOr<List<Task>> runNotifierBuild(
    covariant Tasks notifier,
  ) {
    return notifier.build(
      taskListId: taskListId,
    );
  }

  @override
  Override overrideWith(Tasks Function() create) {
    return ProviderOverride(
      origin: this,
      override: TasksProvider._internal(
        () => create()..taskListId = taskListId,
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
  AutoDisposeAsyncNotifierProviderElement<Tasks, List<Task>> createElement() {
    return _TasksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TasksProvider && other.taskListId == taskListId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskListId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TasksRef on AutoDisposeAsyncNotifierProviderRef<List<Task>> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;
}

class _TasksProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<Tasks, List<Task>>
    with TasksRef {
  _TasksProviderElement(super.provider);

  @override
  String get taskListId => (origin as TasksProvider).taskListId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
