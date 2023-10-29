// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get taskListId => throw _privateConstructorUsedError;
  RemoteStatus get status => throw _privateConstructorUsedError;
  RemoteAction get action => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  DateTime? get completed => throw _privateConstructorUsedError;
  DateTime? get due => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get parentTaskId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String id,
      String title,
      String taskListId,
      RemoteStatus status,
      RemoteAction action,
      DateTime updated,
      DateTime? completed,
      DateTime? due,
      String? position,
      String? parentTaskId,
      String? notes});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? taskListId = null,
    Object? status = null,
    Object? action = null,
    Object? updated = null,
    Object? completed = freezed,
    Object? due = freezed,
    Object? position = freezed,
    Object? parentTaskId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      taskListId: null == taskListId
          ? _value.taskListId
          : taskListId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RemoteStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as RemoteAction,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      parentTaskId: freezed == parentTaskId
          ? _value.parentTaskId
          : parentTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String taskListId,
      RemoteStatus status,
      RemoteAction action,
      DateTime updated,
      DateTime? completed,
      DateTime? due,
      String? position,
      String? parentTaskId,
      String? notes});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? taskListId = null,
    Object? status = null,
    Object? action = null,
    Object? updated = null,
    Object? completed = freezed,
    Object? due = freezed,
    Object? position = freezed,
    Object? parentTaskId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      taskListId: null == taskListId
          ? _value.taskListId
          : taskListId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RemoteStatus,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as RemoteAction,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      parentTaskId: freezed == parentTaskId
          ? _value.parentTaskId
          : parentTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TaskImpl extends _Task {
  _$TaskImpl(
      {required this.id,
      required this.title,
      required this.taskListId,
      this.status = RemoteStatus.draft,
      this.action = RemoteAction.none,
      required this.updated,
      this.completed,
      this.due,
      this.position,
      this.parentTaskId,
      this.notes})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String taskListId;
  @override
  @JsonKey()
  final RemoteStatus status;
  @override
  @JsonKey()
  final RemoteAction action;
  @override
  final DateTime updated;
  @override
  final DateTime? completed;
  @override
  final DateTime? due;
  @override
  final String? position;
  @override
  final String? parentTaskId;
  @override
  final String? notes;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, taskListId: $taskListId, status: $status, action: $action, updated: $updated, completed: $completed, due: $due, position: $position, parentTaskId: $parentTaskId, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.taskListId, taskListId) ||
                other.taskListId == taskListId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.parentTaskId, parentTaskId) ||
                other.parentTaskId == parentTaskId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, taskListId, status,
      action, updated, completed, due, position, parentTaskId, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);
}

abstract class _Task extends Task {
  factory _Task(
      {required final String id,
      required final String title,
      required final String taskListId,
      final RemoteStatus status,
      final RemoteAction action,
      required final DateTime updated,
      final DateTime? completed,
      final DateTime? due,
      final String? position,
      final String? parentTaskId,
      final String? notes}) = _$TaskImpl;
  _Task._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get taskListId;
  @override
  RemoteStatus get status;
  @override
  RemoteAction get action;
  @override
  DateTime get updated;
  @override
  DateTime? get completed;
  @override
  DateTime? get due;
  @override
  String? get position;
  @override
  String? get parentTaskId;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
