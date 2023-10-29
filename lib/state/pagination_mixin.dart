import 'dart:async';

import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/repository/repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin PaginationMixin<T extends RemoteModel> on AutoDisposeAsyncNotifier<List<T>> {
  Paginated<T, String>? _pagination;

  Repository<T> get local;
  bool get hasReachedEndPage => _pagination?.offset == null;

  @override
  FutureOr<List<T>> build() async {
    if (_pagination == null) {
      final remoteList = fetch(null);
      remoteList.then(_updateLocalFromRemote);
    }

    final localList = await watchLocal();
    return localList;
  }

  void refresh() {
    _pagination = null;
    ref.invalidateSelf();
  }

  void _updateLocalFromRemote(Paginated<T, String> pagination) async {
    _pagination = pagination;
    local.insertAll(pagination.items as List<T>);
  }

  Future<Paginated<T, String>> fetch<Key>(Key? offset);
  Future<List<T>> watchLocal();

  void fetchNext() async {
    if (hasReachedEndPage) {
      return;
    }

    final offset = _pagination?.offset;
    final previous = await future;
    state = AsyncValue<List<T>>.loading().copyWithPrevious(AsyncValue.data(previous));
    final remoteLists = fetch(offset);
    final result = await AsyncValue.guard(() => remoteLists);
    result.when(
      data: (data) {
        _pagination = data.offset;
        local.insertAll(data.items as List<T>);
      },
      error: (err, stackTrace) => state = AsyncValue.data(previous).copyWithPrevious(AsyncValue.error(err, stackTrace)),
      loading: () => throw UnimplementedError(),
    );
  }
}
