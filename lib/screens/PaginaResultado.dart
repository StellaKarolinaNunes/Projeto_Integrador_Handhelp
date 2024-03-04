import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:projeto_integrador/screens/PaginaTriagemConcluida.dart';

import 'PaginaIntensidadeDor.dart';

class PaginaResultado extends StatelessWidget {
  final List<String> sintomasSelecionados;
  final double intensidadeDor;

  PaginaResultado(this.sintomasSelecionados, this.intensidadeDor);

  @override
  Widget build(BuildContext context) {
    String descricaoIntensidade = obterDescricaoIntensidade(intensidadeDor);
    String textoResultado =
        "\tSintomas selecionados: ${sintomasSelecionados.join(', ')}\t\t\nIntensidade da Dor: $descricaoIntensidade";

    FlutterTts flutterTts = FlutterTts();
    flutterTts.speak(textoResultado);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Resultado',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF198EB6),
            fontSize: 26,
            fontFamily: 'averia sans libre',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textoResultado),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaTriagemConcluida(),
                  ),
                );
              },
              child: const Text('Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}
