// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'ColocarVideos.dart';
import 'Rotina.dart';
import 'PaginaLogo.dart';
import 'PaginaSintomas.dart';

// void main() {
//   runApp(const EscolhaAtendi());
// }

class EscolhaAtendi extends StatelessWidget {
  const EscolhaAtendi({super.key, Key? Key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(children: const [
          Home1(),
        ]),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  const Home1({super.key, Key? Key});
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
                            builder: (context) => const PaginaLogo(),
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
                    'Escolha Atendimento',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 90.0),
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
                          '1 a 6',
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
        SizedBox(
          width: 260,
          height: 260,
          child: Stack(
            children: const [
              VideoPlayerScreen(
                videoUrl: 'assets/videos/qual_atendimento_vc_deseja.mp4',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const SizedBox(
          width: 346,
          child: Text(
            'Escolha o atendimento deseja?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF009FE3),
              fontSize: 23,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w800,
              height: 0.9,
              letterSpacing: -0.60,
            ),
          ),
        ),
        const SizedBox(
          height: 150,
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
                  _navigateToSintomas(context, "Sintomas");
                },
                child: Container(
                  width: 164,
                  height: 56,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF7BC1B7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xFF0B8FAC),
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
                        'Sintomas',
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rotina('')),
                  );
                },
                child: Container(
                  width: 164,
                  height: 56,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1000),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xFF0B8FAC),
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
                        'Rotina',
                        style: TextStyle(
                          color: Color(0xFF0B8FAC),
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

  void _navigateToSintomas(BuildContext context, tipoSaude) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PaginaSintomas()),
    );
  }
}
