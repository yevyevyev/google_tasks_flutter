import 'package:better_gtask/state/pagination_mixin.dart';
import 'package:better_gtask/state/providers/providers.dart';
import 'package:better_gtask/state/repository/repo.dart';
import 'package:better_gtask/state/undo_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:better_gtask/models/models.dart';

part 'tasks.g.dart';

@riverpod
class Tasks extends _$Tasks with UndoMixin, PaginationMixin {
  @override
  FutureOr<List<Task>> build({required String taskListId}) => firstFetch();

  @override
  Future<Paginated<Task, String>> fetch<Key>(Key? offset) =>
      ref.read(fetchRemoteTasksProvider(offset: offset as String?, taskListId: taskListId).future);

  @override
  Repository<Task> get local => ref.read(taskLocalProvider(taskListId: taskListId));

  @override
  Future<List<Task>> watchLocal() => ref.watch(fetchLocalTasksProvider(taskListId: taskListId).future);
}
