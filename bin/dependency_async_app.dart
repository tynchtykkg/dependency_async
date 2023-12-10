import 'dart:io';

import 'package:translator/translator.dart';

void main() async {
  print('Enter a language');
  String lang = stdin.readLineSync() ?? 'en';
  print('Enter a text');
  String text = stdin.readLineSync() ?? '';
  try {
    String result =
        await translation(lang: lang, text: text).then((value) => value.text);
    print(result);
  } catch (e) {
    print('Something went wrong');
  }
  print('Do you want to continue? (Y/N)');
  String choice = stdin.readLineSync() ?? '';
  if (choice == 'Y') {
    main();
  }
}

Future<Translation> translation(
    {required String lang, required String text}) async {
  final GoogleTranslator translator = GoogleTranslator();

  return translator.translate(text, to: lang);
}
