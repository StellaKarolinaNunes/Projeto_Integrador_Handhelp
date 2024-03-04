import 'package:flutter/material.dart';

import '../screens/PaginaRotina.dart';
import '../screens/PaginaSintomas.dart';
import 'CustomButton.dart';


class EscolhaAtendimentoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dor ou Rotina',
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Rotina',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaRotina(),
                  ),
                );
              },
            ),
            SizedBox(width: 20),
            CustomButton(
              text: 'Dor',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaSintomas(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

