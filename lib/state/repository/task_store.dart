import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/repository/store.dart';

class TaskStore extends Store<Task> {
  TaskStore({
    required super.remote,
    required super.local,
    required super.hasInternetConnection,
  });
}
