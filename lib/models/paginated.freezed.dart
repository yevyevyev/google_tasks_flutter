// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Paginated<T, Key> {
  List<T> get items => throw _privateConstructorUsedError;
  Key? get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedCopyWith<T, Key, Paginated<T, Key>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedCopyWith<T, Key, $Res> {
  factory $PaginatedCopyWith(
          Paginated<T, Key> value, $Res Function(Paginated<T, Key>) then) =
      _$PaginatedCopyWithImpl<T, Key, $Res, Paginated<T, Key>>;
  @useResult
  $Res call({List<T> items, Key? offset});
}

/// @nodoc
class _$PaginatedCopyWithImpl<T, Key, $Res, $Val extends Paginated<T, Key>>
    implements $PaginatedCopyWith<T, Key, $Res> {
  _$PaginatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Key?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedImplCopyWith<T, Key, $Res>
    implements $PaginatedCopyWith<T, Key, $Res> {
  factory _$$PaginatedImplCopyWith(_$PaginatedImpl<T, Key> value,
          $Res Function(_$PaginatedImpl<T, Key>) then) =
      __$$PaginatedImplCopyWithImpl<T, Key, $Res>;
  @override
  @useResult
  $Res call({List<T> items, Key? offset});
}

/// @nodoc
class __$$PaginatedImplCopyWithImpl<T, Key, $Res>
    extends _$PaginatedCopyWithImpl<T, Key, $Res, _$PaginatedImpl<T, Key>>
    implements _$$PaginatedImplCopyWith<T, Key, $Res> {
  __$$PaginatedImplCopyWithImpl(_$PaginatedImpl<T, Key> _value,
      $Res Function(_$PaginatedImpl<T, Key>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? offset = freezed,
  }) {
    return _then(_$PaginatedImpl<T, Key>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc

class _$PaginatedImpl<T, Key> implements _Paginated<T, Key> {
  _$PaginatedImpl({required final List<T> items, required this.offset})
      : _items = items;

  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Key? offset;

  @override
  String toString() {
    return 'Paginated<$T, $Key>(items: $items, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedImpl<T, Key> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.offset, offset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(offset));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedImplCopyWith<T, Key, _$PaginatedImpl<T, Key>> get copyWith =>
      __$$PaginatedImplCopyWithImpl<T, Key, _$PaginatedImpl<T, Key>>(
          this, _$identity);
}

abstract class _Paginated<T, Key> implements Paginated<T, Key> {
  factory _Paginated(
      {required final List<T> items,
      required final Key? offset}) = _$PaginatedImpl<T, Key>;

  @override
  List<T> get items;
  @override
  Key? get offset;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedImplCopyWith<T, Key, _$PaginatedImpl<T, Key>> get copyWith =>
      throw _privateConstructorUsedError;
}
