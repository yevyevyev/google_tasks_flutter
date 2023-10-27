import 'package:better_gtask/state/auth.dart';
import 'package:googleapis/tasks/v1.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_api.g.dart';

@riverpod
Future<TasksApi> taskApi(TaskApiRef ref) async {
  final client = await ref.watch(httpClientProvider.future);
  return TasksApi(client);
}

@riverpod
Future<TaskLists> fetchTaskLists(FetchTaskListsRef ref, {String? nextPageToken}) async {
  final taskApi = await ref.watch(taskApiProvider.future);
  return taskApi.tasklists.list(pageToken: nextPageToken);
}
