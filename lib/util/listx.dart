extension ListX<T> on List<T> {
  void updateWhere(T newVal, bool Function(T element) predicate) {
    final index = indexWhere(predicate);
    if (index == -1) {
      throw Exception();
    }

    removeAt(index);
    insert(index, newVal);
  }
}
