import 'package:flutter/material.dart';
import 'package:projeto_integrador/screens/PaginaTriagemConcluida.dart';

class PaginaProfissao extends StatelessWidget {
  final String profissao;

  PaginaProfissao(this.profissao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profissao),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você será encaminhado para o $profissao adequado.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaTriagemConcluida(),
                  ),
                );
              },
              child: const Text('Fim atendimento '),
            ),
          ],
        ),
      ),
    );
  }
}
