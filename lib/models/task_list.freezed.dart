// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskList {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  RemoteStatus get status => throw _privateConstructorUsedError;
  RemoteAction get action => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListCopyWith<TaskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListCopyWith<$Res> {
  factory $TaskListCopyWith(TaskList value, $Res Function(TaskList) then) =
      _$TaskListCopyWithImpl<$Res, TaskList>;
  @useResult
  $Res call(
      {String id,
      String title,
      RemoteStatus status,
      RemoteAction action,
      DateTime updated});
}

/// @nodoc
class _$TaskListCopyWithImpl<$Res, $Val extends TaskList>
    implements $TaskListCopyWith<$Res> {
  _$TaskListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? status = null,
    Object? action = null,
    Object? updated = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskListImplCopyWith<$Res>
    implements $TaskListCopyWith<$Res> {
  factory _$$TaskListImplCopyWith(
          _$TaskListImpl value, $Res Function(_$TaskListImpl) then) =
      __$$TaskListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      RemoteStatus status,
      RemoteAction action,
      DateTime updated});
}

/// @nodoc
class __$$TaskListImplCopyWithImpl<$Res>
    extends _$TaskListCopyWithImpl<$Res, _$TaskListImpl>
    implements _$$TaskListImplCopyWith<$Res> {
  __$$TaskListImplCopyWithImpl(
      _$TaskListImpl _value, $Res Function(_$TaskListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? status = null,
    Object? action = null,
    Object? updated = null,
  }) {
    return _then(_$TaskListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

class _$TaskListImpl extends _TaskList {
  _$TaskListImpl(
      {required this.id,
      required this.title,
      this.status = RemoteStatus.draft,
      this.action = RemoteAction.none,
      required this.updated})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey()
  final RemoteStatus status;
  @override
  @JsonKey()
  final RemoteAction action;
  @override
  final DateTime updated;

  @override
  String toString() {
    return 'TaskList(id: $id, title: $title, status: $status, action: $action, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, status, action, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskListImplCopyWith<_$TaskListImpl> get copyWith =>
      __$$TaskListImplCopyWithImpl<_$TaskListImpl>(this, _$identity);
}

abstract class _TaskList extends TaskList {
  factory _TaskList(
      {required final String id,
      required final String title,
      final RemoteStatus status,
      final RemoteAction action,
      required final DateTime updated}) = _$TaskListImpl;
  _TaskList._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  RemoteStatus get status;
  @override
  RemoteAction get action;
  @override
  DateTime get updated;
  @override
  @JsonKey(ignore: true)
  _$$TaskListImplCopyWith<_$TaskListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
