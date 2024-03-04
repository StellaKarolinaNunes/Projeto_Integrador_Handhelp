import 'package:flutter/material.dart';
// import 'package:projeto_integradormain.dart';
// import 'package:projeto_integrador/sintomas.dart';

// void main() {
//   runApp(const CodeApp());
// }

class CodeApp extends StatelessWidget {
  const CodeApp({super.key, Key? Key});

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

  // ignore: non_constant_identifier_names
  // final String TipoSaude = "Bronquite";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              // Primeira Column - icons de votla
              const SizedBox(width: 15.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 60.0,
                    height: 95.0,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     // builder: (context) => const FigmaToCodeApp(),
                        //   ),
                        // );
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: 28.0,
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
                      fontSize: 20,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 140.0),
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
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: 328,
          height: 136,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0x4cd9d9d9),
          ),
        ),const SizedBox(height: 120,),
        const SizedBox(
          width: 346,
          child: Text(
            'Escolha o atendimento deseja?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF009FE3),
              fontSize: 30,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w800,
              height: 0.9,
              letterSpacing: -0.60,
            ),
          ),
        ),
        Container(
          width: 350,
          height: 140,
          margin: const EdgeInsets.only(top: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  _navigateToSintomas(context, 'Bronquite');
                },
                child: Container(
                  width: 150, // Defina a largura aqui
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Bronquite.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 110),
                      Text(
                        'Bronquite',
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _navigateToSintomas(context, "Febre");
                },
                child: Container(
                  width: 150, // Defina a largura aqui
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/febre.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 110),
                      Text(
                        "Febre",
                        style: TextStyle(
                          fontSize: 19.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
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
    // Navigator.push(
      // context,
      // MaterialPageRoute(builder: (context) => Sintomas(tipoSaude)),
    // )
  }
}
