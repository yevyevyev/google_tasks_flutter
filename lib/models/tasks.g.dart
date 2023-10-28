// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetTasksCollection on Isar {
  IsarCollection<String, Tasks> get tasks => this.collection();
}

const TasksSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Tasks',
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
  converter: IsarObjectConverter<String, Tasks>(
    serialize: serializeTasks,
    deserialize: deserializeTasks,
    deserializeProperty: deserializeTasksProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeTasks(IsarWriter writer, Tasks object) {
  IsarCore.writeString(writer, 1, object.id);
  IsarCore.writeByte(writer, 2, object.status.index);
  IsarCore.writeString(writer, 3, object.title);
  IsarCore.writeLong(writer, 4, object.updated.toUtc().microsecondsSinceEpoch);
  return Isar.fastHash(object.id);
}

@isarProtected
Tasks deserializeTasks(IsarReader reader) {
  final String _id;
  _id = IsarCore.readString(reader, 1) ?? '';
  final RemoteStatus _status;
  {
    if (IsarCore.readNull(reader, 2)) {
      _status = RemoteStatus.draft;
    } else {
      _status =
          _tasksStatus[IsarCore.readByte(reader, 2)] ?? RemoteStatus.draft;
    }
  }
  final String _title;
  _title = IsarCore.readString(reader, 3) ?? '';
  final DateTime _updated;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _updated = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _updated =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = Tasks(
    id: _id,
    status: _status,
    title: _title,
    updated: _updated,
  );
  return object;
}

@isarProtected
dynamic deserializeTasksProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        if (IsarCore.readNull(reader, 2)) {
          return RemoteStatus.draft;
        } else {
          return _tasksStatus[IsarCore.readByte(reader, 2)] ??
              RemoteStatus.draft;
        }
      }
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
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

sealed class _TasksUpdate {
  bool call({
    required String id,
    RemoteStatus? status,
    String? title,
    DateTime? updated,
  });
}

class _TasksUpdateImpl implements _TasksUpdate {
  const _TasksUpdateImpl(this.collection);

  final IsarCollection<String, Tasks> collection;

  @override
  bool call({
    required String id,
    Object? status = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (status != ignore) 2: status as RemoteStatus?,
          if (title != ignore) 3: title as String?,
          if (updated != ignore) 4: updated as DateTime?,
        }) >
        0;
  }
}

sealed class _TasksUpdateAll {
  int call({
    required List<String> id,
    RemoteStatus? status,
    String? title,
    DateTime? updated,
  });
}

class _TasksUpdateAllImpl implements _TasksUpdateAll {
  const _TasksUpdateAllImpl(this.collection);

  final IsarCollection<String, Tasks> collection;

  @override
  int call({
    required List<String> id,
    Object? status = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    return collection.updateProperties(id, {
      if (status != ignore) 2: status as RemoteStatus?,
      if (title != ignore) 3: title as String?,
      if (updated != ignore) 4: updated as DateTime?,
    });
  }
}

extension TasksUpdate on IsarCollection<String, Tasks> {
  _TasksUpdate get update => _TasksUpdateImpl(this);

  _TasksUpdateAll get updateAll => _TasksUpdateAllImpl(this);
}

sealed class _TasksQueryUpdate {
  int call({
    RemoteStatus? status,
    String? title,
    DateTime? updated,
  });
}

class _TasksQueryUpdateImpl implements _TasksQueryUpdate {
  const _TasksQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Tasks> query;
  final int? limit;

  @override
  int call({
    Object? status = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (status != ignore) 2: status as RemoteStatus?,
      if (title != ignore) 3: title as String?,
      if (updated != ignore) 4: updated as DateTime?,
    });
  }
}

extension TasksQueryUpdate on IsarQuery<Tasks> {
  _TasksQueryUpdate get updateFirst => _TasksQueryUpdateImpl(this, limit: 1);

  _TasksQueryUpdate get updateAll => _TasksQueryUpdateImpl(this);
}

class _TasksQueryBuilderUpdateImpl implements _TasksQueryUpdate {
  const _TasksQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Tasks, Tasks, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? status = ignore,
    Object? title = ignore,
    Object? updated = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (status != ignore) 2: status as RemoteStatus?,
        if (title != ignore) 3: title as String?,
        if (updated != ignore) 4: updated as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension TasksQueryBuilderUpdate on QueryBuilder<Tasks, Tasks, QOperations> {
  _TasksQueryUpdate get updateFirst =>
      _TasksQueryBuilderUpdateImpl(this, limit: 1);

  _TasksQueryUpdate get updateAll => _TasksQueryBuilderUpdateImpl(this);
}

const _tasksStatus = {
  0: RemoteStatus.draft,
  1: RemoteStatus.pending,
  2: RemoteStatus.done,
};

extension TasksQueryFilter on QueryBuilder<Tasks, Tasks, QFilterCondition> {
  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idGreaterThanOrEqualTo(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idLessThanOrEqualTo(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idContains(String value,
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idMatches(String pattern,
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> statusEqualTo(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> statusGreaterThan(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> statusGreaterThanOrEqualTo(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> statusLessThan(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> statusLessThanOrEqualTo(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> statusBetween(
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

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> updatedEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> updatedGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> updatedGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> updatedLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> updatedLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterFilterCondition> updatedBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension TasksQueryObject on QueryBuilder<Tasks, Tasks, QFilterCondition> {}

extension TasksQuerySortBy on QueryBuilder<Tasks, Tasks, QSortBy> {
  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> sortByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension TasksQuerySortThenBy on QueryBuilder<Tasks, Tasks, QSortThenBy> {
  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByTitleDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterSortBy> thenByUpdatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension TasksQueryWhereDistinct on QueryBuilder<Tasks, Tasks, QDistinct> {
  QueryBuilder<Tasks, Tasks, QAfterDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Tasks, Tasks, QAfterDistinct> distinctByUpdated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }
}

extension TasksQueryProperty1 on QueryBuilder<Tasks, Tasks, QProperty> {
  QueryBuilder<Tasks, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Tasks, RemoteStatus, QAfterProperty> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Tasks, String, QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Tasks, DateTime, QAfterProperty> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension TasksQueryProperty2<R> on QueryBuilder<Tasks, R, QAfterProperty> {
  QueryBuilder<Tasks, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Tasks, (R, RemoteStatus), QAfterProperty> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Tasks, (R, String), QAfterProperty> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Tasks, (R, DateTime), QAfterProperty> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension TasksQueryProperty3<R1, R2>
    on QueryBuilder<Tasks, (R1, R2), QAfterProperty> {
  QueryBuilder<Tasks, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Tasks, (R1, R2, RemoteStatus), QOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Tasks, (R1, R2, String), QOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Tasks, (R1, R2, DateTime), QOperations> updatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}
