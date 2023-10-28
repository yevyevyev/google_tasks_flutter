// import 'package:better_gtask/state/paginated.dart';
// import 'package:better_gtask/state/task_remote_api.dart';
// import 'package:googleapis/tasks/v1.dart' as g;
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'tasks.g.dart';

// @riverpod
// class Tasks extends _$Tasks with PaginatedNotifier<g.Task> {
//   late g.Tasks _tasks;

//   @override
//   FutureOr<List<g.Task>> build(String taskListId) async {
//     _tasks = await ref.watch(fetchTasksProvider(taskListId: taskListId).future);
//     return _tasks.items ?? [];
//   }
// }
