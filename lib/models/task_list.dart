import 'package:better_gtask/models/remote_status.dart';
import 'package:better_gtask/state/repository/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:googleapis/tasks/v1.dart' as g;

part 'task_list.freezed.dart';
part 'task_list.g.dart';

@freezed
@collection
class TaskList with _$TaskList implements RemoteModel {
  factory TaskList({
    required String id,
    required String title,
    @Default(RemoteStatus.draft) RemoteStatus status,
    @Default(RemoteAction.none) RemoteAction action,
    required DateTime updated,
  }) = _TaskList;

  @override
  @Id()
  String get id => super.id;

  @override
  @enumValue
  RemoteStatus get status => super.status;

  @override
  @enumValue
  RemoteAction get action => super.action;

  TaskList._();

  g.TaskList toDto() => g.TaskList(id: id, title: title);

  static TaskList fromDto(
    g.TaskList taskList, [
    RemoteStatus? status,
    RemoteAction? action,
  ]) =>
      TaskList(
        id: taskList.id!,
        title: taskList.title!,
        updated: DateTime.parse(taskList.updated!),
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
