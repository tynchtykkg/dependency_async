void main() {
  function1();
}

Future<void> function1() async {
  print(1);
  Future.delayed(const Duration(seconds: 3)).then((value) {
    print(3);
  });
  print(2);
}
