import 'package:flutter/material.dart';

import 'package:projeto_integrador/TelaNova.dart';
import 'ColocarVideos.dart';

import 'EscolhaAtendi.dart';


class Rotina extends StatelessWidget {
  final String tipoSaude;
  const Rotina(this.tipoSaude, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            Home2(tipoSaude),
          ],
        ),
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  final String tipoSaude;
  const Home2(this.tipoSaude, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              const SizedBox(width: 8.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30.0,
                    height: 90.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EscolhaAtendi()),
                        );
                      },
                      //Primeiro column - icons de votla
                      child: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: 40.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              //Segunda Column - Texto
              const SizedBox(width: 10.0),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Rotina",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //Aqui é usar vídeos de libras
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildProfessionalCard(
                    context,
                    'Nutricionista',
                    'assets/videos/nutricionista.mp4',
                    'nutricionista',
                    'assets/videos/encaminhado_nutricionista.mp4',
                  ),
                  const SizedBox(width: 40.5),
                  _buildProfessionalCard(
                    context,
                    'Fisioterapeuta',
                    'assets/videos/fisioterapeuta.mp4',
                    'Fisioterapeuta',
                    '',
                  ),
                ],
              ),
              const SizedBox(
                  height: 20), // Adicione espaço vertical entre as linhas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildProfessionalCard(
                    context,
                    'Psicólogo',
                    'assets/videos/psicologo.mp4',
                    'Psicólogo',
                    'assets/videos/encaminhado_psicologo.mp4',
                  ),
                  const SizedBox(width: 40.5),
                  _buildProfessionalCard(
                    context,
                    'Dentista',
                    'assets/videos/dentista.mp4',
                    'Dentista',
                    'assets/videos/encaminhado_dentista.mp4',
                  ),
                ],
              ),
              const SizedBox(
                  height: 20), // Adicione espaço vertical entre as linhas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildProfessionalCard(
                    context,
                    'Serviço social',
                    'assets/videos/servico_social.mp4',
                    'Serviço social',
                    'assets/videos/encaminhado_servico_social.mp4',
                  ),
                  const SizedBox(width: 40.5),
                  _buildProfessionalCard(
                    context,
                    'Pré natal',
                    'assets/videos/pre_natal.mp4',
                    'Pré natal',
                    'assets/videos/encaminhado_pre_natal.mp4',
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildProfessionalCard(BuildContext context, String profissao,
      String videoUrl, String label, String videoFinal) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 170,
              height: 240,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color.fromARGB(130, 27, 22, 18),
                    blurRadius: 11,
                    offset: Offset(0, 8),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            Container(
              width: 160,
              height: 130,
              child: VideoPlayerScreen(videoUrl: videoUrl),
            ),
            GestureDetector(
              onTap: () {
                _navigateToSintomas(context, profissao, videoFinal);
              },
              child: Container(
                width: 150,
                height: 35,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                margin: const EdgeInsets.only(top: 180, left: 9.6),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF0B8FAC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10.9,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w800,
                        height: 0,
                        letterSpacing: 1.20,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 40.5),
      ],
    );
  }
}

void _navigateToSintomas(
    BuildContext context, String profissao, String videoFinal) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => TelaNova(profissao, videoFinal: videoFinal),
    ),
  );
}
