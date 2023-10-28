import 'package:better_gtask/models/remote_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'tasks.freezed.dart';
part 'tasks.g.dart';

@freezed
@collection
class Tasks with _$Tasks {
  factory Tasks({
    required String id,
    required String title,
    required RemoteStatus status,
    required DateTime updated,
  }) = _Tasks;

  @override
  @Id()
  String get id => super.id;

  @override
  @enumValue
  RemoteStatus get status => super.status;

  Tasks._();
}
