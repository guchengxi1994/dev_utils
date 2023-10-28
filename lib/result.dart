class Result<T, E> {
  final T? data;
  final E? err;

  Result({this.data, this.err}) {
    assert(data != null || err != null);
  }

  T unwrap() {
    if (data == null) {
      throw Exception("Data is null");
    }
    return data!;
  }
}
