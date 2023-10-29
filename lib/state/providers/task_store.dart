import 'package:better_gtask/state/providers/providers.dart';
import 'package:better_gtask/state/repository/repository.dart';
import 'package:better_gtask/state/repository/task_store.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'task_store.g.dart';

@riverpod
Future<TaskListStore> taskListStore(TaskListStoreRef ref) async {
  final local = ref.watch(taskListLocalProvider);
  final remote = await ref.watch(taskListRemoteProvider.future);
  final status = await ref.watch(connectivityProvider.future);
  return TaskListStore(
    remote: remote,
    local: local,
    hasInternetConnection: status.hasConnection,
  );
}

@riverpod
Future<TaskStore> taskStore(TaskStoreRef ref, {required String taskListId}) async {
  final local = ref.watch(taskLocalProvider(taskListId: taskListId));
  final remote = await ref.watch(tasksRemoteProvider(taskListId: taskListId).future);
  final status = await ref.watch(connectivityProvider.future);
  return TaskStore(
    remote: remote,
    local: local,
    hasInternetConnection: status.hasConnection,
  );
}
