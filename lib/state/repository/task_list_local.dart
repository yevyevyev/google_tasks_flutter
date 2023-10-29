import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/repository/task_list.dart';
import 'package:isar/isar.dart';

abstract class TaskListsLocalRepository implements TaskListsRepository {
  Stream<List<TaskList>> watchTaskLists();
}

class IsarTaskListLocalRepository implements TaskListsLocalRepository {
  IsarTaskListLocalRepository(this.isar);

  final Isar isar;

  @override
  Future<bool> delete(TaskList model) async {
    final result = isar.write((isar) => isar.taskLists.delete(model.id));
    return result;
  }

  @override
  Future<TaskList> insert(TaskList model) async {
    isar.write((isar) => isar.taskLists.put(model));
    return model;
  }

  @override
  Future<TaskList> update(TaskList model) => insert(model);

  @override
  Future<void> insertAll(List<TaskList> model) async => isar.write((isar) => isar.taskLists.putAll(model));

  @override
  Stream<List<TaskList>> watchTaskLists() => isar.taskLists.watchLazy(fireImmediately: true).map(
        (_) => isar.taskLists
            .where()
            .sortByUpdated()
            .findAll()
            // .where((element) => element.status != RemoteStatus.draftDelete)
            .toList(),
      );
}
