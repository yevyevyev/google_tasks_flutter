import 'package:better_gtask/state/pagination_mixin.dart';
import 'package:better_gtask/state/providers/providers.dart';
import 'package:better_gtask/state/providers/task_store.dart';
import 'package:better_gtask/state/repository/repo.dart';
import 'package:better_gtask/state/undo_mixin.dart';
import 'package:better_gtask/util/util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:better_gtask/models/models.dart';
import 'package:uuid/uuid.dart';

part 'tasks.g.dart';

@riverpod
class Tasks extends _$Tasks with UndoMixin, PaginationMixin {
  @override
  FutureOr<List<Task>> build({required String taskListId}) => firstFetch();

  void addTask({required String title}) async {
    final task = Task(
      taskListId: taskListId,
      id: const Uuid().v4(),
      title: title,
      updated: DateTime.now().toUtc(),
    );

    final store = await ref.read(taskStoreProvider(taskListId: taskListId).future);
    store.insert(task);
  }

  Future<UndoToken?> completeTask(Task task) async {
    task = task.copyWith(completed: DateTime.now().toUtc());
    final previous = await future;
    final newState = List<Task>.from(previous);
    newState.updateWhere(task, (element) => element.id == task.id);
    state = AsyncValue.data(newState);
    return UndoToken(
      this,
      duration: const Duration(seconds: 3),
      action: () {},
    );
  }

  Future<UndoToken> deleteTask(Task task) async {
    final previous = await future;
    final newState = List<Task>.from(previous);
    newState.removeWhere((element) => element.id == task.id);
    state = AsyncValue.data(newState);

    return UndoToken(
      this,
      duration: const Duration(seconds: 3),
      action: () async {
        final store = await ref.read(taskStoreProvider(taskListId: taskListId).future);
        store.delete(task);
      },
    );
  }

  @override
  Future<Paginated<Task, String>> fetch<Key>(Key? offset) =>
      ref.read(fetchRemoteTasksProvider(offset: offset as String?, taskListId: taskListId).future);

  @override
  Repository<Task> get local => ref.read(taskLocalProvider(taskListId: taskListId));

  @override
  Future<List<Task>> watchLocal() => ref.watch(fetchLocalTasksProvider(taskListId: taskListId).future);
}
