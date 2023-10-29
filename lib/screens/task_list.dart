import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/widgets/text_field_dialog.dart';
import 'package:better_gtask/widgets/widgets.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:better_gtask/state/state.dart';

class TaskListScreen extends ConsumerWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskList = ref.watch(taskListsProvider);
    final taskListNotifier = ref.watch(taskListsProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Lists'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => onFabPressed(ref),
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async => taskListNotifier.refresh(),
        child: InfiniteList(
          itemCount: taskList.valueOrNull?.length ?? 0,
          isLoading: taskList.isLoading,
          hasError: taskList.hasError,
          hasReachedMax: taskListNotifier.hasReachedEndPage,
          onFetchData: taskListNotifier.fetchNext,
          separatorBuilder: (context, index) => Divider(
            color: index.isOdd ? Colors.black : Colors.blue,
          ),
          itemBuilder: (context, index) => TaskListTile(taskList: taskList.requireValue[index]),
        ),
      ),
    );
  }

  void onFabPressed(WidgetRef ref) async {
    final title = await TextFieldDialog.show(ref.context, title: 'Enter List Title');
    if (title == null) {
      return;
    }

    ref.read(taskListsProvider.notifier).addTaskList(title: title);
  }
}

class TaskListTile extends ConsumerWidget {
  const TaskListTile({super.key, required this.taskList});

  final TaskList taskList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: ValueKey(taskList.id),
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
        title: Text(taskList.title),
        subtitle: taskList.status == RemoteStatus.pending ? const LinearProgressIndicator() : null,
        trailing: taskList.status == RemoteStatus.draft ? const Icon(Icons.warning_rounded) : null,
      ),
    );
  }

  void onDeleteRequested(WidgetRef ref) async {
    final scaffold = ScaffoldMessenger.of(ref.context);
    final undoToken = await ref.read(taskListsProvider.notifier).deleteTaskList(taskList);
    scaffold.showSnackBar(UndoSnackBar(
      undoToken: undoToken,
      title: 'Task List Deleted',
    ));
  }

  void onTaskListTap(WidgetRef ref) {
    TasksRoute(taskListId: taskList.id).go(ref.context);
  }
}
