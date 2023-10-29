import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/repository/task_list.dart';
import 'package:googleapis/tasks/v1.dart' as g;

abstract class TaskListsRemoteRepository implements TaskListsRepository {
  Future<Paginated<TaskList, String>> fetchTaskLists([String? offset]);
}

class GoogleApiTaskListRemoteRepository implements TaskListsRemoteRepository {
  GoogleApiTaskListRemoteRepository(this.api);

  final g.TasksApi api;

  @override
  Future<bool> delete(TaskList model) async {
    await api.tasklists.delete(model.id);
    return true;
  }

  @override
  Future<TaskList> insert(TaskList model) async {
    final taskList = await api.tasklists.insert(model.toDto());
    return TaskList.fromDto(taskList);
  }

  @override
  Future<TaskList> update(TaskList model) async {
    final taskList = await api.tasklists.update(model.toDto(), model.id);
    return TaskList.fromDto(taskList);
  }

  @override
  Future<void> insertAll(List<TaskList> model) => Future.wait(model.map((e) => insert(e)));

  @override
  Future<Paginated<TaskList, String>> fetchTaskLists([String? offset]) async {
    final taskLists = await api.tasklists.list(pageToken: offset);
    return Paginated(
      items: taskLists.items?.map(TaskList.fromDto).toList() ?? [],
      offset: taskLists.nextPageToken,
    );
  }
}
