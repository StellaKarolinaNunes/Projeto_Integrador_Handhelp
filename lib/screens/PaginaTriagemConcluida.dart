
import 'package:flutter/material.dart';

class PaginaTriagemConcluida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Triagem Realizada',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 272,
              height: 228,
              decoration: ShapeDecoration(
                color: const Color(0xFFC4C4C4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                  ModalRoute.withName('/'), // Retorna à primeira página
                );
              },
              child: const Text('Voltar à Primeira Página'),
            ),
          ],
        ),
      ),
    );
  }
}


