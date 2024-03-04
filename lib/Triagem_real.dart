import 'package:flutter/material.dart';
import 'ColocarVideos.dart';
import 'GeraTexto.dart';
import 'EscolhaAtendi.dart';


// void main() {
//   runApp(const Triagem_real());
// }

// ignore: camel_case_types
class Triagem_real extends StatelessWidget {
  const Triagem_real({super.key, Key? Key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Triagem(),
        ]),
      ),
    );
  }
}

class Triagem extends StatelessWidget {
  const Triagem({super.key, Key? Key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              // Primeira Column - icons de votla
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
                            builder: (context) => GeraText(),
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
                    'Triagem realizado',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 102.0),
              // Terceira Column - Ícone de elemento
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                          '5 a 5',
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
        const SizedBox(
          width: 260,
          height: 260,
          child: Stack(
            children: [
              VideoPlayerScreen(
                videoUrl: 'assets/videos/triagem_realizada.mp4',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        ),
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
                      builder: (context) => const EscolhaAtendi(),
                    ),
                  );
                },
                child: Container(
                  width: 164,
                  height: 56,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Voltar Início',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
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
            ],
          ),
        ),
      ],
    );
  }
}
