import 'package:translator/translator.dart';

void main() async {
  final GoogleTranslator translator = GoogleTranslator();
  final String input = 'Здравствуйте! Ты в порядке?';

  Translation translation = await translator.translate(input);
  print(translation.text);

  await translator.translate(input, to: 'ky').then(
    (value) {
      print(value);
    },
  );
}
