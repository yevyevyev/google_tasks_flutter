import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:better_gtask/state/state.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskList = ref.watch(taskListsProvider);
    final taskListNotifier = ref.watch(taskListsProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Example'),
      ),
      body: InfiniteList(
        itemCount: taskList.valueOrNull?.length ?? 0,
        isLoading: taskList.isLoading,
        hasError: taskList.hasError,
        hasReachedMax: taskListNotifier.hasReachedEndPage,
        onFetchData: taskListNotifier.fetchNext,
        separatorBuilder: (context, index) {
          return Divider(
            color: index.isOdd ? Colors.black : Colors.blue,
          );
        },
        itemBuilder: (context, index) {
          final item = taskList.requireValue[index];
          return ListTile(
            dense: true,
            title: Text(item.title!),
          );
        },
      ),
    );
  }
}
