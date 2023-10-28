// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_remote_api.dart';

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
String _$fetchRemoteTaskListsHash() =>
    r'72dbdb7348174873ee507a2cd9a53daad179ee6b';

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
class FetchRemoteTaskListsFamily extends Family<AsyncValue<TaskLists>> {
  /// See also [fetchRemoteTaskLists].
  const FetchRemoteTaskListsFamily();

  /// See also [fetchRemoteTaskLists].
  FetchRemoteTaskListsProvider call({
    String? nextPageToken,
  }) {
    return FetchRemoteTaskListsProvider(
      nextPageToken: nextPageToken,
    );
  }

  @override
  FetchRemoteTaskListsProvider getProviderOverride(
    covariant FetchRemoteTaskListsProvider provider,
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
  String? get name => r'fetchRemoteTaskListsProvider';
}

/// See also [fetchRemoteTaskLists].
class FetchRemoteTaskListsProvider
    extends AutoDisposeFutureProvider<TaskLists> {
  /// See also [fetchRemoteTaskLists].
  FetchRemoteTaskListsProvider({
    String? nextPageToken,
  }) : this._internal(
          (ref) => fetchRemoteTaskLists(
            ref as FetchRemoteTaskListsRef,
            nextPageToken: nextPageToken,
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
          nextPageToken: nextPageToken,
        );

  FetchRemoteTaskListsProvider._internal(
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
    FutureOr<TaskLists> Function(FetchRemoteTaskListsRef provider) create,
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
        nextPageToken: nextPageToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<TaskLists> createElement() {
    return _FetchRemoteTaskListsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRemoteTaskListsProvider &&
        other.nextPageToken == nextPageToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, nextPageToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRemoteTaskListsRef on AutoDisposeFutureProviderRef<TaskLists> {
  /// The parameter `nextPageToken` of this provider.
  String? get nextPageToken;
}

class _FetchRemoteTaskListsProviderElement
    extends AutoDisposeFutureProviderElement<TaskLists>
    with FetchRemoteTaskListsRef {
  _FetchRemoteTaskListsProviderElement(super.provider);

  @override
  String? get nextPageToken =>
      (origin as FetchRemoteTaskListsProvider).nextPageToken;
}

String _$fetchRemoteTasksHash() => r'ee359c91f7795a7f2b0f0bfe85b6b388ef289e81';

/// See also [fetchRemoteTasks].
@ProviderFor(fetchRemoteTasks)
const fetchRemoteTasksProvider = FetchRemoteTasksFamily();

/// See also [fetchRemoteTasks].
class FetchRemoteTasksFamily extends Family<AsyncValue<Tasks>> {
  /// See also [fetchRemoteTasks].
  const FetchRemoteTasksFamily();

  /// See also [fetchRemoteTasks].
  FetchRemoteTasksProvider call({
    required String taskListId,
    String? nextPageToken,
  }) {
    return FetchRemoteTasksProvider(
      taskListId: taskListId,
      nextPageToken: nextPageToken,
    );
  }

  @override
  FetchRemoteTasksProvider getProviderOverride(
    covariant FetchRemoteTasksProvider provider,
  ) {
    return call(
      taskListId: provider.taskListId,
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
  String? get name => r'fetchRemoteTasksProvider';
}

/// See also [fetchRemoteTasks].
class FetchRemoteTasksProvider extends AutoDisposeFutureProvider<Tasks> {
  /// See also [fetchRemoteTasks].
  FetchRemoteTasksProvider({
    required String taskListId,
    String? nextPageToken,
  }) : this._internal(
          (ref) => fetchRemoteTasks(
            ref as FetchRemoteTasksRef,
            taskListId: taskListId,
            nextPageToken: nextPageToken,
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
          nextPageToken: nextPageToken,
        );

  FetchRemoteTasksProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.taskListId,
    required this.nextPageToken,
  }) : super.internal();

  final String taskListId;
  final String? nextPageToken;

  @override
  Override overrideWith(
    FutureOr<Tasks> Function(FetchRemoteTasksRef provider) create,
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
        nextPageToken: nextPageToken,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Tasks> createElement() {
    return _FetchRemoteTasksProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRemoteTasksProvider &&
        other.taskListId == taskListId &&
        other.nextPageToken == nextPageToken;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, taskListId.hashCode);
    hash = _SystemHash.combine(hash, nextPageToken.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRemoteTasksRef on AutoDisposeFutureProviderRef<Tasks> {
  /// The parameter `taskListId` of this provider.
  String get taskListId;

  /// The parameter `nextPageToken` of this provider.
  String? get nextPageToken;
}

class _FetchRemoteTasksProviderElement
    extends AutoDisposeFutureProviderElement<Tasks> with FetchRemoteTasksRef {
  _FetchRemoteTasksProviderElement(super.provider);

  @override
  String get taskListId => (origin as FetchRemoteTasksProvider).taskListId;
  @override
  String? get nextPageToken =>
      (origin as FetchRemoteTasksProvider).nextPageToken;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
