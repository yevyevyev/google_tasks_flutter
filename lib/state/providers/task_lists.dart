import 'package:better_gtask/state/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:googleapis/tasks/v1.dart' as g;
import 'package:better_gtask/models/models.dart';
import 'package:uuid/uuid.dart';

part 'task_lists.g.dart';

@riverpod
class TaskLists extends _$TaskLists {
  g.TaskLists? _taskLists;

  bool get hasReachedEndPage => _taskLists?.nextPageToken == null;

  @override
  FutureOr<List<TaskList>> build() async {
    if (_taskLists == null) {
      final remoteTaskLists = ref.watch(fetchRemoteTaskListsProvider().future);
      remoteTaskLists.then(_updateLocalTaskListFromRemote);
    }

    final localTaskLists = await ref.watch(fetchLocalTaskListProvider.future);
    return localTaskLists;
  }

  void refresh() {
    _taskLists = null;
    ref.invalidateSelf();
  }

  void _updateLocalTaskListFromRemote(g.TaskLists taskLists) async {
    _taskLists = taskLists;
    final isar = ref.read(isarProvider);
    isar.write((isar) {
      final all = taskLists.items?.map(TaskList.fromDto).toList() ?? [];
      isar.taskLists.putAll(all);
    });
  }

  void fetchNext() async {
    if (hasReachedEndPage) {
      return;
    }

    final isar = ref.read(isarProvider);
    final nextPageToken = _taskLists?.nextPageToken;
    final previous = await future;
    state = const AsyncValue<List<TaskList>>.loading().copyWithPrevious(AsyncValue.data(previous));
    final remoteTaskLists = ref.read(fetchRemoteTaskListsProvider(nextPageToken: nextPageToken).future);
    final result = await AsyncValue.guard(() => remoteTaskLists);
    result.when(
      data: (data) => isar.write((isar) => isar.taskLists.putAll(data.items?.map(TaskList.fromDto).toList() ?? [])),
      error: (err, stackTrace) => state = AsyncValue.data(previous).copyWithPrevious(AsyncValue.error(err, stackTrace)),
      loading: () => throw UnimplementedError(),
    );
  }

  void addTaskList({required String title}) async {
    final taskList = TaskList(
      id: const Uuid().v4(),
      title: title,
      status: RemoteStatus.pending,
      updated: DateTime.now().toUtc(),
    );
    final taskApi = await ref.read(taskApiProvider.future);
    final isar = ref.read(isarProvider);

    isar.write((isar) => isar.taskLists.put(taskList));
    final result = await AsyncValue.guard(() => taskApi.tasklists.insert(taskList.toDto()));
    result.when(
      data: (data) => isar.write((isar) {
        assert(isar.taskLists.delete(taskList.id));
        isar.taskLists.put(TaskList.fromDto(data));
      }),
      error: (err, stackTrace) => isar.write(
        (isar) => isar.taskLists.put(taskList.copyWith(status: RemoteStatus.draft)),
      ),
      loading: () => throw UnimplementedError(),
    );
  }

  void deleteTaskList(TaskList taskList) async {
    final taskApi = await ref.read(taskApiProvider.future);
    final isar = ref.read(isarProvider);
    final previous = await future;
    state = AsyncValue.data(previous..removeWhere((element) => element.id == taskList.id));
    assert(isar.write((isar) => isar.taskLists.delete(taskList.id)));
    final result = await AsyncValue.guard(() => taskApi.tasklists.delete(taskList.id));
    result.when(
      data: (_) => _,
      error: (err, stackTrace) => isar.write((isar) => isar.taskLists.put(taskList)),
      loading: () => throw UnimplementedError(),
    );
  }
}
