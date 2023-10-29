import 'package:better_gtask/state/repository/repository.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:better_gtask/models/models.dart';

part 'task_local.g.dart';

@riverpod
Isar isar(IsarRef ref) => throw UnimplementedError();

@riverpod
TaskListsLocalRepository taskListLocal(TaskListLocalRef ref) {
  final isar = ref.watch(isarProvider);
  return IsarLocalRepository(isar);
}

@riverpod
Stream<List<TaskList>> fetchLocalTaskList(FetchLocalTaskListRef ref) {
  final local = ref.watch(taskListLocalProvider);
  return local.watchTaskLists();
}
