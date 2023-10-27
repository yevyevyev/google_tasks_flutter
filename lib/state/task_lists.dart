import 'dart:async';

import 'package:better_gtask/state/task_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:googleapis/tasks/v1.dart' as g;

part 'task_lists.g.dart';

@riverpod
class TaskLists extends _$TaskLists {
  g.TaskLists? _taskLists;

  bool get hasReachedEndPage => _taskLists?.nextPageToken == null;

  @override
  FutureOr<List<g.TaskList>> build() async {
    _taskLists = await ref.watch(fetchTaskListsProvider().future);
    return _taskLists?.items ?? [];
  }

  void fetchNext() async {
    if (hasReachedEndPage) {
      return;
    }

    final nextPageToken = _taskLists?.nextPageToken;
    final previous = state;
    state = const AsyncValue<List<g.TaskList>>.loading().copyWithPrevious(previous);
    final fetched =
        await AsyncValue.guard(() => ref.watch(fetchTaskListsProvider(nextPageToken: nextPageToken).future));
    state = fetched.when(
      data: (data) => AsyncValue.data([...previous.valueOrNull ?? [], ...data.items ?? []]),
      error: (err, stackTrace) => previous.copyWithPrevious(AsyncValue.error(err, stackTrace)),
      loading: () => previous.copyWithPrevious(const AsyncValue.loading()),
    );
  }

  void addTaskList(g.TaskList taskList) async {
    final taskApi = await ref.read(taskApiProvider.future);
    // ignore: body_might_complete_normally_catch_error
    unawaited(taskApi.tasklists.insert(taskList).catchError((err, stackTrace) {
      final list = List<g.TaskList>.from(state.requireValue);
      list.removeWhere((element) => element.etag == taskList.etag);
      state = AsyncValue.data(list);
    }));

    final previousState = state.hasValue ? state.requireValue : [];
    state = AsyncValue.data([taskList, ...previousState]);
  }
}
