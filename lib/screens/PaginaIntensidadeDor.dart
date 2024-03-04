import 'package:flutter/material.dart';
import 'PaginaResultado.dart';

class PaginaIntensidadeDor extends StatefulWidget {
  final List<String> sintomasSelecionados;

  PaginaIntensidadeDor(this.sintomasSelecionados);

  @override
  _PaginaIntensidadeDorState createState() => _PaginaIntensidadeDorState();
}

class _PaginaIntensidadeDorState extends State<PaginaIntensidadeDor> {
  double intensidadeDor = 10; // Valor padrão inicial

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Intensidade da Dor',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF198EB6),
            fontSize: 26,
            fontFamily: 'averia sans libre',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Descrição acima da barra de intensidade
          Text(
            obterDescricaoIntensidade(intensidadeDor),
            style: const TextStyle(
              fontSize: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          // Barra de rolagem para indicar a intensidade da dor
          Slider(
            value: intensidadeDor,
            min: 0,
            max: 10,
            divisions: 10,
            onChanged: (value) {
              setState(() {
                intensidadeDor = value;
              });
            },
            // Adicionando a cor diretamente à barra de rolagem
            activeColor: obterCor(intensidadeDor),
          ),
          // Descrição da intensidade

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Lógica para lidar com a intensidade da dor e sintomas selecionados
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaResultado(
                      widget.sintomasSelecionados, intensidadeDor),
                ),
              );
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Color obterCor(double valor) {
    if (valor < 2) {
      return const Color(0xFFBFFFE8); // Muito Baixo
    } else if (valor < 4) {
      return const Color(0xFF22EEB1); // Baixo
    } else if (valor < 6) {
      return const Color(0xFFFFC83F); // Normal
    } else if (valor < 8) {
      return const Color(0xFFFFCD4C); // Alto
    } else if (valor < 10) {
      return const Color(0xFFFF3B00); // Muito Alto
    } else {
      return const Color(0xFFFF3B00); // Muito Alto
    }
  }
}

String obterDescricaoIntensidade(double valor) {
  if (valor < 3) {
    return 'Muito Baixa';
  } else if (valor < 5) {
    return 'Baixa';
  } else if (valor < 7) {
    return 'Normal';
  } else if (valor < 9) {
    return 'Alta';
  } else {
    return 'Muito Alta';
  }
}
