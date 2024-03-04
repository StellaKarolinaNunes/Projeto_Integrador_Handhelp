import 'package:flutter/material.dart';

// void main() {
//   runApp(PaginaSintomas());
// }

class PaginaSintomas extends StatefulWidget {
  @override
  _PaginaSintomasState createState() => _PaginaSintomasState();
}

class _PaginaSintomasState extends State<PaginaSintomas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sintomas',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontFamily: 'averia sans libre',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adiciona a imagem ao lado da coluna de sintomas
            Expanded(
              child: _buildInteractiveViewer(),
            ),
            const SizedBox(
              width: 20,
            ), // Espaçamento entre a imagem e os sintomas
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _construirBotoesCategorias(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInteractiveViewer() {
    return InteractiveViewer(
      maxScale: 5.0,
      child: Stack(
        children: [
          // Image.asset(
          //   'assets/images/CorpoM.png',
          //   width: 300,
          //   height: 300,
          // ),
          // Positioned(
          //   top: 12.0,
          //   left: 75.0,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 32,
          //         height: 20,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(
          //               context, 'Dor no Cabeça!', ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 27.0,
          //   left: 65.0,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 0.90,
          //         height: 16,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(
          //               context, 'Dor no Ouvido!', ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 28.3,
          //   left: 83.9,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 0.90,
          //         height: 13,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(
          //               context, 'Dor no Olho!', ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 63.0,
          //   left: 66.5,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 50.1,
          //         height: 30,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(context, 'Dor no Peito!',
          //               ['Tosse', 'Falta de ar', 'Chiado no peito']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 63.0,
          //   left: 195.5,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 50.1,
          //         height: 45,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(context, 'Dor no Costa!',
          //               ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 148.0,
          //   left: 41,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth:10.1,
          //         height: 29,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(context, 'Dor no Mão!',
          //               ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 97,
          //   left: 74.5,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 40.1,
          //         height: 42,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(context, 'Dor no barrigo!',
          //               ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 220,
          //   left: 186,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 28,
          //         height: 40,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(context, 'Dor no pantruilho!',
          //               ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),
          // Positioned(
          //   top: 110,
          //   left: 201.9,
          //   child: Column(
          //     children: [
          //       MaterialButton(
          //         minWidth: 30,
          //         height: 22,
          //         // color: Colors.blue,
          //         onPressed: () {
          //           _mostrarSintomas(context, 'Dor no Coluna!',
          //               ['Symptom 1', 'Symptom 2']);
          //         },
          //         // Other properties...
          //       ),
          //     ],
          //   ),
          // ),

          // Adicione mais áreas de dor conforme necessário
        ],
      ),
    );
  }

  // Widget _buildPainfulArea(double width, double height, String mensagem) {
  //   return GestureDetector(
  //     onTap: () {
  //       print(mensagem);
  //     },
  //     child: Container(
  //       // color: const Color.fromARGB(0, 244, 67, 54),
  //       color: Colors.red,
  //       width: width,
  //       height: height,
  //     ),
  //   );
  // }

  List<String> _sintomasSelecionados = [];
  final Map<String, List<String>> _categoriasSintomas = {
    'Respiratórios': ['Tosse', 'Falta de ar', 'Chiado no peito'],
    'Gastrointestinais': ['Náuseas', 'Vômitos', 'Diarreia'],
    'Febre e Calafrios': ['Febre', 'Calafrios', 'Sudorese excessiva'],
    'Dores': ['Dor de cabeça', 'Dores musculares', 'Dor nas articulações'],
    'Sintomas Neurológicos': ['Tontura', 'Confusão', 'Dor de cabeça intensa'],
  };

  void _alternarSintoma(String sintoma) {
    setState(() {
      if (_sintomasSelecionados.contains(sintoma)) {
        _sintomasSelecionados.remove(sintoma);
      } else {
        _sintomasSelecionados.add(sintoma);
      }
    });
  }

  void _mostrarSintomas(
      BuildContext context, String categoria, List<String> sintomas) {
    List<String> _sintomasSelecionadosTemp = [];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(categoria),
          content: Column(
            children: sintomas
                .map(
                  (sintoma) => ElevatedButton(
                    onPressed: () {
                      _alternarSintoma(sintoma);
                      _sintomasSelecionadosTemp.add(sintoma);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _sintomasSelecionados.contains(sintoma)
                          ? Colors.grey
                          : null,
                    ),
                    child: Text(sintoma),
                  ),
                )
                .toList(),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _sintomasSelecionados.clear();
                  _sintomasSelecionados.addAll(_sintomasSelecionadosTemp);
                });

                _sintomasSelecionadosTemp.clear();

                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  List<Widget> _construirBotoesCategorias() {
    List<Widget> botoes = [];
    _categoriasSintomas.forEach((categoria, sintomas) {
      botoes.add(
        ElevatedButton(
          onPressed: () {
            _mostrarSintomas(context, categoria, sintomas);
          },
          child: Text(categoria),
        ),
      );
      botoes.add(const SizedBox(height: 10));
    });
    botoes.add(
      ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => PaginaIntensidadeDor(_sintomasSelecionados),
          //   ),
          // );
        },
        child: const Text('Próxima Pergunta'),
      ),
    );

    return botoes;
  }
}