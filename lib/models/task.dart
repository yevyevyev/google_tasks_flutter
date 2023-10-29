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
    DateTime? completed,
    DateTime? due,
    String? position,
    String? parentTaskId,
    String? notes,
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

  g.Task toDto() => g.Task(
        id: id,
        title: title,
        updated: updated.toIso8601String(),
        completed: completed?.toIso8601String(),
        due: due?.toIso8601String(),
        position: position,
        parent: parentTaskId,
        notes: notes,
      );

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
        completed: task.completed != null ? DateTime.parse(task.completed!) : null,
        due: task.due != null ? DateTime.parse(task.due!) : null,
        position: task.position,
        parentTaskId: task.parent,
        notes: task.notes,
      );

  @override
  T copyWithStatus<T extends RemoteModel>({
    required RemoteStatus status,
    required RemoteAction action,
  }) =>
      copyWith(status: status, action: action) as T;
}
