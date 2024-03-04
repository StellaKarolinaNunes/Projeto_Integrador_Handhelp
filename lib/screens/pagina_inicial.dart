import 'package:flutter/material.dart';
import 'package:projeto_integrador/EscolhaAtendi.dart';


//responsiva
// void main() {
//   runApp(PaginaInicial());
// }

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'HANDHELP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontFamily: 'Averia Sans Libre',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

