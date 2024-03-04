import 'package:flutter_tts/flutter_tts.dart';

FlutterTts flutterTts = FlutterTts()
  ..setLanguage('pt-BR')
  ..setSpeechRate(2.8)
  // ..setSpeechRate(1.5)
  ..setVolume(1.0)
  ..setPitch(1.0);

Future<void> falarTexto(String texto) async {
  var result = await flutterTts.speak(texto);
  if (result == 1) {
    // A fala foi iniciada com sucesso
  } else {
    // Houve algum erro na fala
  }
}
