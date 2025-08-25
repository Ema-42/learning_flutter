void main() {
  emitNumbers().listen((value) {
    print('String value ${value}');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    //print('desde periodic ${value}');
    return value;
  }).take(5);
}
