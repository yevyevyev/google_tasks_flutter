import 'package:better_gtask/models/remote_status.dart';
import 'package:better_gtask/state/repository/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:googleapis/tasks/v1.dart' as g;

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
@collection
class Task with _$Task implements RemoteModel {
  factory Task({
    required String id,
    required String title,
    required String taskListId,
    @Default(RemoteStatus.draft) RemoteStatus status,
    @Default(RemoteAction.none) RemoteAction action,
    required DateTime updated,
  }) = _Task;

  @override
  @Id()
  String get id => super.id;

  @override
  @enumValue
  RemoteStatus get status => super.status;

  @override
  @enumValue
  RemoteAction get action => super.action;

  Task._();

  g.Task toDto() => g.Task(id: id, title: title);

  static Task fromDto(
    String taskListId,
    g.Task task, [
    RemoteStatus? status,
    RemoteAction? action,
  ]) =>
      Task(
        taskListId: taskListId,
        id: task.id!,
        title: task.title!,
        updated: DateTime.parse(task.updated!),
        status: status ?? RemoteStatus.done,
        action: action ?? RemoteAction.none,
      );

  @override
  T copyWithStatus<T extends RemoteModel>({
    required RemoteStatus status,
    required RemoteAction action,
  }) =>
      copyWith(status: status, action: action) as T;
}
