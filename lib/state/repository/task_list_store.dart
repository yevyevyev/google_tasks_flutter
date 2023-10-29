import 'package:better_gtask/models/models.dart';
import 'package:better_gtask/state/repository/store.dart';

class TaskListStore extends Store<TaskList> {
  TaskListStore({
    required super.remote,
    required super.local,
    required super.hasInternetConnection,
  });
}
