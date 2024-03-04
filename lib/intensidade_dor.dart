import 'package:flutter/material.dart';
import 'package:projeto_integrador/values.dart';
import 'GeraTexto.dart';
import 'PaginaSintomas.dart';

// void main() {
//   runApp(const IntensityPage(
//     escolhasAnteriores: [],
//   ));
// }

class IntensityPage extends StatefulWidget {
  final List<String> escolhasAnteriores;
  // final Key? key;

  const IntensityPage({Key? key, required this.escolhasAnteriores})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _IntensityPageState createState() => _IntensityPageState();
}

class _IntensityPageState extends State<IntensityPage> {
  double intensidade = 5.0;
  String tlabel = getColorLabel(intensidadeSelecionada);

  // Função para obter a cor com base na intensidade
  Color getColor(double value) {
    if (value < 3) {
      return const Color(0xFFBDA193); // Muito Baixo
    } else if (value < 5) {
      return const Color(0xFFFFCE5C); // Baixo
    } else if (value < 7) {
      return const Color(0xFF9BB068); // Normal
    } else if (value < 9) {
      return const Color(0xFFFE814B); // Alto
    } else {
      return const Color(0xFFA18FFF); // Muito Alto
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  // Primeira Column - ícone de volta
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
                                builder: (context) => const PaginaSintomas(),
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
                  // Segunda Column - Texto
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Intensidade da dor',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 110.0),
                  // Terceira Column - Ícone de elemento
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
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
                              '3 a 6',
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
            const SizedBox(height: 70.0),
            SizedBox(
              height: 360.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        width: 97,
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Muito Alto',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 18,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'TEXTO',
                              style: TextStyle(
                                color: Color(0xFF0B8FAC),
                                fontSize: 12,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: 1.20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 97,
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Alto',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 18,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              width: double.infinity,
                              child: const Text(
                                'TEXTO',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 12,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: 1.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 97,
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Normal',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 18,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              width: double.infinity,
                              child: const Text(
                                'TEXTO',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 12,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: 1.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 97,
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Baixo',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 18,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              width: double.infinity,
                              child: const Text(
                                'TEXTO',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 12,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: 1.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 97,
                        height: 46,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Muito Baixo',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 18,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              width: double.infinity,
                              child: const Text(
                                'TEXTO',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 12,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: 1.20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // const SizedBox(height: 220),
                      SliderTheme(
                        data: const SliderThemeData(
                          showValueIndicator: ShowValueIndicator.always,
                          valueIndicatorShape:
                              PaddleSliderValueIndicatorShape(),
                          valueIndicatorTextStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        child: Transform.rotate(
                          angle: -1.5708,
                          child: SizedBox(
                            width: 192.0,
                            height: 350.0,
                            child: Slider(
                              value: intensidadeSelecionada,
                              onChanged: (value) {
                                setState(() {
                                  intensidadeSelecionada = value;
                                });
                              },
                              min: 1,
                              max: 10,
                              divisions: 4,
                              // label: tlabel.toString(),
                              activeColor: getColor(intensidadeSelecionada),
                              inactiveColor:
                                  Colors.grey, // Cor da parte inativa do Slider
                              // Define a orientação vertical
                              // axis: Axis.vertical,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/Deprimido.png',
                        width: 48, // Ajuste conforme necessário
                        height: 48, // Ajuste conforme necessário
                      ),
                      Image.asset(
                        'assets/images/Triste.png',
                        width: 48,
                        height: 48,
                      ),
                      Image.asset(
                        'assets/images/Muito_Feliz.png',
                        width: 48,
                        height: 48,
                      ),
                      Image.asset(
                        'assets/images/Feliz.png',
                        width: 48,
                        height: 48,
                      ),
                      Image.asset(
                        'assets/images/Neutro.png',
                        width: 48,
                        height: 48,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 140),
            // const SizedBox(height: 290),
            Container(
              width: 350,
              height: 56,
              margin: const EdgeInsets.only(top: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              GeraText(), // Certifique-se de que a classe GeraText está corretamente definida
                        ),
                      );
                    },
                    child: Container(
                      width: 264,
                      height: 56,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF0B8FAC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0xFF7BC1B7),
                            blurRadius: 0,
                            offset: Offset(0, 0),
                            spreadRadius: 4,
                          )
                        ],
                      ),
                      child: const SingleChildScrollView(
                        child: Column(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
