// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetTaskListCollection on Isar {
  IsarCollection<String, TaskList> get taskLists => this.collection();
}

const TaskListSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'TaskList',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'status',
        type: IsarType.byte,
        enumMap: {"draft": 0, "pending": 1, "done": 2},
      ),
      IsarPropertySchema(
        name: 'action',
        type: IsarType.byte,
        enumMap: {"delete": 0, "insert": 1, "update": 2, "none": 3},
      ),
      IsarPropertySchema(
        name: 'title',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'updated',
        type: IsarType.dateTime,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, TaskList>(
    serialize: serializeTaskList,
    deserialize: deserializeTaskList,
    deserializeProperty: deserializeTaskListProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeTaskList(IsarWriter writer, TaskList object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeByte(writer, 2, object.status.index);
  IsarCore.writeByte(writer, 3, object.action.index);
  IsarCore.writeString(writer, 4, object.title);
  IsarCore.writeLong(writer, 5, object.updated.toUtc().microsecondsSinceEpoch);
  return Isar.fastHash(object.id);
}

@isarProtected
TaskList deserializeTaskList(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final RemoteStatus _status;
  {
    if (IsarCore.readNull(reader, 2)) {
      _status = RemoteStatus.draft;
    } else {
      _status =
          _taskListStatus[IsarCore.readByte(reader, 2)] ?? RemoteStatus.draft;
    }
  }
  final RemoteAction _action;
  {
    if (IsarCore.readNull(reader, 3)) {
      _action = RemoteAction.delete;
    } else {
      _action =
          _taskListAction[IsarCore.readByte(reader, 3)] ?? RemoteAction.delete;
    }
  }
  final String _title;
  _title = IsarCore.readString(reader, 4) ?? '';
  final DateTime _updated;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _updated = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _updated =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = TaskList(
    id: _id,
    status: _status,
    action: _action,
    title: _title,
    updated: _updated,
  );
  return object;
}

@isarProtected
dynamic deserializeTaskListProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        if (IsarCore.readNull(reader, 2)) {
          return RemoteStatus.draft;
        } else {
          return _taskListStatus[IsarCore.readByte(reader, 2)] ??
              RemoteStatus.draft;
        }
      }
    case 3:
      {
        if (IsarCore.readNull(reader, 3)) {
          return RemoteAction.delete;
        } else {
          return _taskListAction[IsarCore.readByte(reader, 3)] ??
              RemoteAction.delete;
        }
      }
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      {
        final value = IsarCore.readLong(reader, 5);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _TaskListUpdate {
  bool call({
    required String id,
    RemoteStatus? status,
    RemoteAction? action,
    String? title,
    DateTime? updated,
  });
}

class _TaskListUpdateImpl implements _TaskListUpdate {
  const _TaskListUpdateImpl(this.collection);

  final IsarCollection<String, TaskList> collection;

  @override
  bool call({
    required String id,
    Object? status = ignore,
    Object? action = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (status != ignore) 2: status as RemoteStatus?,
          if (action != ignore) 3: action as RemoteAction?,
          if (title != ignore) 4: title as String?,
          if (updated != ignore) 5: updated as DateTime?,
        }) >
        0;
  }
}

sealed class _TaskListUpdateAll {
  int call({
    required List<String> id,
    RemoteStatus? status,
    RemoteAction? action,
    String? title,
    DateTime? updated,
  });
}

class _TaskListUpdateAllImpl implements _TaskListUpdateAll {
  const _TaskListUpdateAllImpl(this.collection);

  final IsarCollection<String, TaskList> collection;

  @override
  int call({
    required List<String> id,
    Object? status = ignore,
    Object? action = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    return collection.updateProperties(id, {
      if (status != ignore) 2: status as RemoteStatus?,
      if (action != ignore) 3: action as RemoteAction?,
      if (title != ignore) 4: title as String?,
      if (updated != ignore) 5: updated as DateTime?,
    });
  }
}

extension TaskListUpdate on IsarCollection<String, TaskList> {
  _TaskListUpdate get update => _TaskListUpdateImpl(this);

  _TaskListUpdateAll get updateAll => _TaskListUpdateAllImpl(this);
}

sealed class _TaskListQueryUpdate {
  int call({
    RemoteStatus? status,
    RemoteAction? action,
    String? title,
    DateTime? updated,
  });
}

class _TaskListQueryUpdateImpl implements _TaskListQueryUpdate {
  const _TaskListQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<TaskList> query;
  final int? limit;

  @override
  int call({
    Object? status = ignore,
    Object? action = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (status != ignore) 2: status as RemoteStatus?,
      if (action != ignore) 3: action as RemoteAction?,
      if (title != ignore) 4: title as String?,
      if (updated != ignore) 5: updated as DateTime?,
    });
  }
}

extension TaskListQueryUpdate on IsarQuery<TaskList> {
  _TaskListQueryUpdate get updateFirst =>
      _TaskListQueryUpdateImpl(this, limit: 1);

  _TaskListQueryUpdate get updateAll => _TaskListQueryUpdateImpl(this);
}

class _TaskListQueryBuilderUpdateImpl implements _TaskListQueryUpdate {
  const _TaskListQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<TaskList, TaskList, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? status = ignore,
    Object? action = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (status != ignore) 2: status as RemoteStatus?,
        if (action != ignore) 3: action as RemoteAction?,
        if (title != ignore) 4: title as String?,
        if (updated != ignore) 5: updated as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension TaskListQueryBuilderUpdate
    on QueryBuilder<TaskList, TaskList, QOperations> {
  _TaskListQueryUpdate get updateFirst =>
      _TaskListQueryBuilderUpdateImpl(this, limit: 1);

  _TaskListQueryUpdate get updateAll => _TaskListQueryBuilderUpdateImpl(this);
}

const _taskListStatus = {
  0: RemoteStatus.draft,
  1: RemoteStatus.pending,
  2: RemoteStatus.done,
};
const _taskListAction = {
  0: RemoteAction.delete,
  1: RemoteAction.insert,
  2: RemoteAction.update,
  3: RemoteAction.none,
};

extension TaskListQueryFilter
    on QueryBuilder<TaskList, TaskList, QFilterCondition> {
  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> statusEqualTo(
    RemoteStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> statusGreaterThan(
    RemoteStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      statusGreaterThanOrEqualTo(
    RemoteStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> statusLessThan(
    RemoteStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      statusLessThanOrEqualTo(
    RemoteStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> statusBetween(
    RemoteStatus lower,
    RemoteStatus upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> actionEqualTo(
    RemoteAction value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> actionGreaterThan(
    RemoteAction value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      actionGreaterThanOrEqualTo(
    RemoteAction value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> actionLessThan(
    RemoteAction value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      actionLessThanOrEqualTo(
    RemoteAction value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> actionBetween(
    RemoteAction lower,
    RemoteAction upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      titleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      titleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> updatedEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> updatedGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      updatedGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> updatedLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition>
      updatedLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterFilterCondition> updatedBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension TaskListQueryObject
    on QueryBuilder<TaskList, TaskList, QFilterCondition> {}

extension TaskListQuerySortBy on QueryBuilder<TaskList, TaskList, QSortBy> {
  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> sortByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension TaskListQuerySortThenBy
    on QueryBuilder<TaskList, TaskList, QSortThenBy> {
  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterSortBy> thenByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension TaskListQueryWhereDistinct
    on QueryBuilder<TaskList, TaskList, QDistinct> {
  QueryBuilder<TaskList, TaskList, QAfterDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterDistinct> distinctByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskList, TaskList, QAfterDistinct> distinctByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension TaskListQueryProperty1
    on QueryBuilder<TaskList, TaskList, QProperty> {
  QueryBuilder<TaskList, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TaskList, RemoteStatus, QAfterProperty> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<TaskList, RemoteAction, QAfterProperty> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<TaskList, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<TaskList, DateTime, QAfterProperty> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension TaskListQueryProperty2<R>
    on QueryBuilder<TaskList, R, QAfterProperty> {
  QueryBuilder<TaskList, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TaskList, (R, RemoteStatus), QAfterProperty> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<TaskList, (R, RemoteAction), QAfterProperty> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<TaskList, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<TaskList, (R, DateTime), QAfterProperty> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension TaskListQueryProperty3<R1, R2>
    on QueryBuilder<TaskList, (R1, R2), QAfterProperty> {
  QueryBuilder<TaskList, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<TaskList, (R1, R2, RemoteStatus), QOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<TaskList, (R1, R2, RemoteAction), QOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<TaskList, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<TaskList, (R1, R2, DateTime), QOperations> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
