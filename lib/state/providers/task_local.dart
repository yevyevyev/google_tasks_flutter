import 'package:better_gtask/state/repository/repository.dart';
import 'package:better_gtask/state/repository/task_local.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:better_gtask/models/models.dart';

part 'task_local.g.dart';

@riverpod
Isar isar(IsarRef ref) => throw UnimplementedError();

@riverpod
TaskListsLocalRepository taskListLocal(TaskListLocalRef ref) {
  final isar = ref.watch(isarProvider);
  return IsarTaskListLocalRepository(isar);
}

@riverpod
TaskLocalRepository taskLocal(TaskLocalRef ref, {required String taskListId}) {
  final isar = ref.watch(isarProvider);
  return IsarTaskLocalRepository(isar, taskListId);
}

@riverpod
Stream<List<TaskList>> fetchLocalTaskList(FetchLocalTaskListRef ref) {
  final local = ref.watch(taskListLocalProvider);
  return local.watchTaskLists();
}

@riverpod
Stream<List<Task>> fetchLocalTasks(FetchLocalTasksRef ref, {required String taskListId}) {
  final local = ref.watch(taskLocalProvider(taskListId: taskListId));
  return local.watchTasks();
}
