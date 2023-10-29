import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/widgets/widgets.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:better_gtask/state/state.dart';

class TasksScreen extends ConsumerWidget {
  const TasksScreen({super.key, required this.taskListId});

  final String taskListId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(tasksProvider(taskListId: taskListId));
    final tasksNotifier = ref.watch(tasksProvider(taskListId: taskListId).notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
        bottom: const ConnectivityStatus(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onFabPressed(ref),
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async => tasksNotifier.refresh(),
        child: InfiniteList(
          itemCount: tasks.valueOrNull?.length ?? 0,
          isLoading: tasks.isLoading,
          hasError: tasks.hasError,
          hasReachedMax: tasksNotifier.hasReachedEndPage,
          onFetchData: tasksNotifier.fetchNext,
          separatorBuilder: (context, index) => Divider(
            color: index.isOdd ? Colors.black : Colors.blue,
          ),
          itemBuilder: (context, index) => TaskTile(task: tasks.requireValue[index]),
        ),
      ),
    );
  }

  void onFabPressed(WidgetRef ref) async {
    final title = await TextFieldDialog.show(ref.context, title: 'Enter List Title');
    if (title == null) {
      return;
    }

    // ref.read(tasksProvider(taskListId: taskListId)).addTaskList(title: title);
  }
}

class TaskTile extends ConsumerWidget {
  const TaskTile({super.key, required this.task});

  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: ValueKey(task.id),
      onDismissed: (direction) => onDeleteRequested(ref),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 12),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      direction: DismissDirection.startToEnd,
      child: ListTile(
        onTap: () => onTaskListTap(ref),
        dense: true,
        title: Text(task.title),
        subtitle: task.status == RemoteStatus.pending ? const LinearProgressIndicator() : null,
        trailing: task.status == RemoteStatus.draft ? const Icon(Icons.warning_rounded) : null,
      ),
    );
  }

  void onDeleteRequested(WidgetRef ref) async {
    // final scaffold = ScaffoldMessenger.of(ref.context);
    // final undoToken = await ref.read(taskListsProvider.notifier).deleteTaskList(taskList);
    // scaffold.showSnackBar(UndoSnackBar(
    //   undoToken: undoToken,
    //   title: 'Task List Deleted',
    // ));
  }

  void onTaskListTap(WidgetRef ref) {
    // TasksRoute(taskListId: taskList.id).go(ref.context);
  }
}
