import 'package:better_gtask/models/remote_status.dart';
import 'package:better_gtask/state/repository/repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Store<Model extends RemoteModel> implements Repository<Model> {
  Store({
    required this.remote,
    required this.local,
    required this.hasInternetConnection,
  });

  final bool hasInternetConnection;
  final Repository<Model> remote;
  final Repository<Model> local;

  @override
  Future<Model> insert(Model model) async {
    model = model.copyWithStatus<Model>(
      status: hasInternetConnection ? RemoteStatus.pending : RemoteStatus.draft,
      action: RemoteAction.insert,
    );

    local.insert(model);
    if (!hasInternetConnection) {
      return model;
    }

    final result = await AsyncValue.guard(() => remote.insert(model));
    result.when(
      data: (data) async {
        assert(await local.delete(model));
        local.insert(data);
      },
      error: (err, stackTrace) => local.insert(model.copyWithStatus(
        status: RemoteStatus.draft,
        action: RemoteAction.insert,
      )),
      loading: () => throw UnimplementedError(),
    );
    return model;
  }

  @override
  Future<bool> delete(Model model) async {
    if (!hasInternetConnection && model.status != RemoteStatus.draft) {
      local.update(model.copyWithStatus(status: RemoteStatus.draft, action: RemoteAction.delete));
    } else {
      local.delete(model);
    }

    if (model.status == RemoteStatus.draft || !hasInternetConnection) {
      return true;
    }

    final result = await AsyncValue.guard(() => remote.delete(model));
    result.when(
      data: (_) => _,
      error: (err, stackTrace) => local.insert(model),
      loading: () => throw UnimplementedError(),
    );

    return true;
  }

  @override
  Future<Model> update(Model model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> insertAll(List<Model> model) {
    // TODO: implement insertAll
    throw UnimplementedError();
  }
}
