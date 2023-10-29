import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/repository/task.dart';
import 'package:googleapis/tasks/v1.dart' as g;

abstract class TaskRemoteRepository implements TaskRepository {
  Future<Paginated<Task, String>> fetchTasks([String? offset]);
}

class GoogleApiTaskRemoteRepository implements TaskRemoteRepository {
  GoogleApiTaskRemoteRepository(this.api, this.taskListId);

  final g.TasksApi api;
  final String taskListId;

  @override
  Future<bool> delete(Task model) async {
    await api.tasks.delete(taskListId, model.id);
    return true;
  }

  @override
  Future<Task> insert(Task model) async {
    final task = await api.tasks.insert(model.toDto(), taskListId);
    return Task.fromDto(taskListId, task);
  }

  @override
  Future<Task> update(Task model) async {
    final task = await api.tasks.update(model.toDto(), taskListId, model.id);
    return Task.fromDto(taskListId, task);
  }

  @override
  Future<void> insertAll(List<Task> model) => Future.wait(model.map((e) => insert(e)));

  @override
  Future<Paginated<Task, String>> fetchTasks([String? offset]) async {
    final tasks = await api.tasks.list(taskListId, pageToken: offset);
    return Paginated(
      items: tasks.items?.map((e) => Task.fromDto(taskListId, e)).toList() ?? [],
      offset: tasks.nextPageToken,
    );
  }
}
