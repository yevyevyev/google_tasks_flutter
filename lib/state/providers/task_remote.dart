import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/providers/auth.dart';
import 'package:better_gtask/state/repository/task_list_remote.dart';
import 'package:googleapis/tasks/v1.dart' as g;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_remote.g.dart';

@riverpod
Future<TaskListsRemoteRepository> taskListRemote(TaskListRemoteRef ref) async {
  final client = await ref.watch(httpClientProvider.future);
  return GoogleApiRemoteRepository(g.TasksApi(client));
}

@riverpod
Future<Paginated<TaskList, String>> fetchRemoteTaskLists(FetchRemoteTaskListsRef ref, {String? offset}) async {
  final remote = await ref.watch(taskListRemoteProvider.future);
  return remote.fetchTaskLists(offset);
}
