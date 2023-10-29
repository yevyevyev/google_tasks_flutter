import 'package:better_gtask/state/pagination_mixin.dart';
import 'package:better_gtask/state/providers/providers.dart';
import 'package:better_gtask/state/providers/task_store.dart';
import 'package:better_gtask/state/repository/repo.dart';
import 'package:better_gtask/state/undo_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:better_gtask/models/models.dart';
import 'package:uuid/uuid.dart';

part 'task_lists.g.dart';

@riverpod
class TaskLists extends _$TaskLists with UndoMixin, PaginationMixin {
  @override
  FutureOr<List<TaskList>> build() => firstFetch();

  void addTaskList({required String title}) async {
    final taskList = TaskList(
      id: const Uuid().v4(),
      title: title,
      updated: DateTime.now().toUtc(),
    );
    final store = await ref.read(taskListStoreProvider.future);
    store.insert(taskList);
  }

  Future<UndoToken> deleteTaskList(TaskList taskList) async {
    final previous = await future;
    final newState = List<TaskList>.from(previous);
    newState.removeWhere((element) => element.id == taskList.id);
    state = AsyncValue.data(newState);

    return UndoToken(
      this,
      duration: const Duration(seconds: 3),
      action: () async {
        final store = await ref.read(taskListStoreProvider.future);
        store.delete(taskList);
      },
    );
  }

  @override
  Future<Paginated<TaskList, String>> fetch<Key>(Key? offset) =>
      ref.read(fetchRemoteTaskListsProvider(offset: offset as String?).future);

  @override
  Repository<TaskList> get local => ref.read(taskListLocalProvider);

  @override
  Future<List<TaskList>> watchLocal() => ref.watch(fetchLocalTaskListProvider.future);
}
