abstract class Repository {
  Future<bool> deleteTaskList(String id);
  Future<bool> deleteTask(String id);
}
