import 'package:flutter/material.dart';
import 'PaginaProfissao.dart';

class PaginaRotina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rotina',
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
            _buildButtonWithRectangle(context, 'Nutricionista'),
            _buildButtonWithRectangle(context, 'Fisioterapeuta'),
            _buildButtonWithRectangle(context, 'Psicólogo'),
            _buildButtonWithRectangle(context, 'Dentista'),
            _buildButtonWithRectangle(context, 'Serviço Social'),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonWithRectangle(BuildContext context, String profissao) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              _irParaPaginaProfissao(context, profissao);
            },
            child: Text(profissao),
          ),
        ],
      ),
    );
  }

  void _irParaPaginaProfissao(BuildContext context, String profissao) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaginaProfissao(profissao),
      ),
    );
  }
}
