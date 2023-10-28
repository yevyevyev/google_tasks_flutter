import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:better_gtask/models/models.dart';

part 'task_local_api.g.dart';

@riverpod
Isar isar(IsarRef ref) => throw UnimplementedError();

@riverpod
Stream<List<TaskList>> fetchLocalTaskList(FetchLocalTaskListRef ref) {
  final isar = ref.watch(isarProvider);
  return isar.taskLists.watchLazy(fireImmediately: true).map((_) => isar.taskLists.where().sortByUpdated().findAll());
}

@riverpod
Stream<List<Tasks>> fetchLocalTasks(FetchLocalTasksRef ref, {required String taskListId}) {
  final isar = ref.watch(isarProvider);
  return isar.tasks.watchLazy(fireImmediately: true).map((_) => isar.tasks.where().sortByUpdated().findAll());
}
