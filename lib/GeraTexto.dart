import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'intensidade_dor.dart';
import 'triagem_real.dart';
import 'values.dart';

FlutterTts flutterTts = FlutterTts()
  ..setLanguage('pt-BR')
  ..setSpeechRate(1.0)
  ..setVolume(1.0)
  ..setPitch(1.0);

class GeraText extends StatelessWidget {
  GeraText({Key? key});

  @override
  Widget build(BuildContext context) {
    String textogerado =
        'Sintomas: ${sintomasSeleccionados.toString().replaceAll('[', '').replaceAll(']', '')}\n\nIntensidade: ${tlabel.toString()}';

    Future<void> falarTexto(String textogerado) async {
      var result = await flutterTts.speak(textogerado);
      if (result == 1) {
        // A fala foi iniciada com sucesso
      } else {
        // Houve algum erro na fala
      }
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  const SizedBox(width: 5.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60.0,
                        height: 95.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const IntensityPage(
                                  escolhasAnteriores: <String>[],
                                ),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_left_rounded,
                            size: 40.0,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 0.20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Falar texto médico',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 108.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0B8FAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '4 a 6',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Container(
              width: 343,
              height: 233,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFF2294BB),
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0xFF198EB6),
                    blurRadius: 0,
                    offset: Offset(0, 0),
                    spreadRadius: 4,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 28,
                    top: 87,
                    child: SizedBox(
                      width: 287,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: textogerado,
                              style: const TextStyle(
                                color: Color(0xFF198EB6),
                                fontSize: 15,
                                fontFamily: 'Urbanist',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 140),
            GestureDetector(
              onTap: () {
                falarTexto(textogerado);
                // Adicione a ação desejada ao pressionar o botão
              },
              child: Container(
                width: 187,
                height: 40,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: ShapeDecoration(
                  color: const Color(0xFF7BC1B7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1234),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/icons_de_som.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Aperte para falar',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: -0.16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const Triagem_real(), // Corrigi o nome da classe
                  ),
                );
              },
              child: Container(
                width: 343,
                height: 56,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: ShapeDecoration(
                  color: const Color(0xFF0B8FAC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w800,
                            height: 0,
                            letterSpacing: -0.18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
