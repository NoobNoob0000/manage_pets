class Box<T> {
  List<T> items = [];

  add(T item) {
    items.add(item);
  }

  getAll() {
    return items;
  }
}
