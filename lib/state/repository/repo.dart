import 'package:better_gtask/models/models.dart';

abstract class RemoteModel {
  RemoteStatus get status;
  RemoteAction get action;

  T copyWithStatus<T extends RemoteModel>({
    required RemoteStatus status,
    required RemoteAction action,
  });
}

abstract class Repository<Model extends RemoteModel> {
  Future<Model> insert(Model model);
  Future<void> insertAll(List<Model> model);
  Future<Model> update(Model model);
  Future<bool> delete(Model model);
}
