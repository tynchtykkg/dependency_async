void main() {
  function1();
}

Future<void> function1() async {
  print(1);
  await Future.delayed(const Duration(seconds: 3)).then((value) {
    print(2);
  });
  print(3);
}
