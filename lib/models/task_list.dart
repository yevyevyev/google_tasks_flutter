import 'package:better_gtask/models/remote_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:googleapis/tasks/v1.dart' as g;

part 'task_list.freezed.dart';
part 'task_list.g.dart';

@freezed
@collection
class TaskList with _$TaskList {
  factory TaskList({
    required String id,
    required String title,
    required RemoteStatus status,
    required DateTime updated,
  }) = _TaskList;

  @override
  @Id()
  String get id => super.id;

  @override
  @enumValue
  RemoteStatus get status => super.status;

  TaskList._();

  g.TaskList toDto() => g.TaskList(id: id, title: title);

  static TaskList fromDto(g.TaskList taskList, [RemoteStatus? status]) => TaskList(
        id: taskList.id!,
        title: taskList.title!,
        updated: DateTime.parse(taskList.updated!),
        status: status ?? RemoteStatus.done,
      );
}
