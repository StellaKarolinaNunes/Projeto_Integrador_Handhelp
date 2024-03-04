import 'package:flutter/material.dart';
import 'EscolhaAtendi.dart';

class PaginaLogo extends StatelessWidget {
  const PaginaLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: const [
            Tela1(),
          ],
        ),
      ),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 409,
          height: 780,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              const Positioned(
                left: -74,
                top: 162,
                child: SizedBox(width: 558, height: 288.30),
              ),
              Positioned(
                left: 90,
                top: 210.30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EscolhaAtendi()),
                    );
                  },
                  child: Container(
                    width: 212,
                    height: 209,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 110,
                top: 459.94,
                child: Text(
                  'HandHelp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF198EB6),
                    fontSize: 38,
                    fontFamily: 'Averia One',
                    fontWeight: FontWeight.w700,
                    height: 0,
                    letterSpacing: 0.23,
                  ),
                ),
              ),
              const Positioned(
                left: 165.50,
                top: 699.99,
                child: Text(
                  'Created by',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0B8FAC),
                    fontSize: 12,
                    fontFamily: 'Averia One',
                    fontWeight: FontWeight.w400,
                    height: 0,                    
                  ),
                ),
              ),
              const Positioned(
                left: 165.50,
                top: 713.99,
                child: Text(
                  'HandHelp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7BC1B7),
                    fontSize: 13,
                    fontFamily: 'Averia One',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: 0.23,
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