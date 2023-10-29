import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/repository/task.dart';
import 'package:isar/isar.dart';

abstract class TaskLocalRepository implements TaskRepository {
  Stream<List<Task>> watchTasks();
}

class IsarTaskLocalRepository implements TaskLocalRepository {
  IsarTaskLocalRepository(this.isar, this.taskListId);

  final Isar isar;
  final String taskListId;

  @override
  Future<bool> delete(Task model) async {
    final result = isar.write((isar) => isar.tasks.delete(model.id));
    return result;
  }

  @override
  Future<Task> insert(Task model) async {
    isar.write((isar) => isar.tasks.put(model));
    return model;
  }

  @override
  Future<Task> update(Task model) => insert(model);

  @override
  Future<void> insertAll(List<Task> model) async => isar.write((isar) => isar.tasks.putAll(model));

  @override
  Stream<List<Task>> watchTasks() => isar.tasks.watchLazy(fireImmediately: true).map((_) =>
      isar.tasks.where().sortByUpdated().findAll().where((element) => element.taskListId == taskListId).toList());
}
