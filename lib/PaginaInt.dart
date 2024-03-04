import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projeto_integrador/ColocarVideos.dart';
import 'Rotina.dart';

// void main() {
//   runApp(TelaNova(''));
// }

class TelaNova extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String profissao;
  final String videoFinal;
  // const TelaNova(this.profissao, String videoFinal, {super.key, required this.videoFinal});
  const TelaNova(this.profissao, {Key? key, required this.videoFinal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: Scaffold(
        body: Column(
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
                                builder: (context) => const Rotina(''),
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
                  
                  
                ],
              ),
            ),
// ----------------------------
            Stack(
              children: [
                Container(
                  width: 270,
                  height: 270,
                  // color: Colors.black26,
                  child: VideoPlayerScreen(videoUrl: videoFinal),
                ),
              ],
            ),
// -------------------------------
            const SizedBox(height: 120),
            SizedBox(
              width: 343,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'ROTINA',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
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
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Você será encaminhado para ',
                                style: TextStyle(
                                  color: Color(0xFF0B8FAC),
                                  fontSize: 30,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0.9,
                                  letterSpacing: -0.60,
                                ),
                              ),
                              TextSpan(
                                text: profissao,
                                style: const TextStyle(
                                  color: Color(0xFF7BC1B7),
                                  fontSize: 30,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w800,
                                  height: 0.9,
                                  letterSpacing: -0.60,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 5.0),
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
                                    builder: (context) => const Rotina(''),
                                  ),
                                );
                              },
                              child: Container(
                                width: 164,
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
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('videoUrl', videoFinal));
  }
}
