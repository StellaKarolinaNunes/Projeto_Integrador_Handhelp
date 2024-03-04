import 'package:flutter/material.dart';
import 'PaginaIntensidadeDor.dart';

class PaginaSintomas extends StatefulWidget {
  @override
  _PaginaSintomasState createState() => _PaginaSintomasState();
}

class _PaginaSintomasState extends State<PaginaSintomas> {
  List<String> _sintomasSelecionados = [];

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
            Expanded(
              child: _buildInteractiveViewer(),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PaginaIntensidadeDor(_sintomasSelecionados),
                    ),
                  );
                },
                child: const Text('Próxima Pergunta'),
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
          Image.asset(
            'assets/images/CorpoM.png',
            width: 300,
            height: 300,
          ),
          _buildPainButton(12.0, 75.0, 'Dor no Cabeça!', ['Symptom 1', 'Symptom 2']),
          _buildPainButton(27.0, 65.0, 'Dor no Ouvido!', ['Symptom 1', 'Symptom 2']),
          _buildPainButton(28.3, 83.9, 'Dor no Olho!', ['Symptom 1', 'Symptom 2']),
          _buildPainButton(63.0, 66.5, 'Dor no Peito!', ['Tosse', 'Falta de ar', 'Chiado no peito']),
          _buildPainButton(63.0, 195.5, 'Dor no Costa!', ['Symptom 1', 'Symptom 2']),
          _buildPainButton(148.0, 41, 'Dor no Mão!', ['Symptom 1', 'Symptom 2']),
          _buildPainButton(97, 74.5, 'Dor no barrigo!', ['Symptom 1', 'Symptom 2']),
          _buildPainButton(220, 186, 'Dor no pantruilho!', ['Symptom 1', 'Symptom 2']),
          _buildPainButton(110, 201.9, 'Dor no Coluna!', ['Symptom 1', 'Symptom 2']),
          // Adicione mais áreas de dor conforme necessário
        ],
      ),
    );
  }

  Widget _buildPainButton(double top, double left, String title, List<String> symptoms) {
    return Positioned(
      top: top,
      left: left,
      child: Column(
        children: [
          MaterialButton(
            minWidth: 32,
            height: 20,
            onPressed: () {
              _mostrarSintomas(context, title, symptoms);
            },
          ),
        ],
      ),
    );
  }

  void _mostrarSintomas(BuildContext context, String category, List<String> symptoms) {
    List<String> _sintomasSelecionadosTemp = [];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(category),
          content: Column(
            children: symptoms
                .map(
                  (sintoma) => ElevatedButton(
                    onPressed: () {
                      _alternarSintoma(sintoma);
                      _sintomasSelecionadosTemp.add(sintoma);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _sintomasSelecionados.contains(sintoma) ? Colors.grey : null,
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

  void _alternarSintoma(String symptom) {
    setState(() {
      if (_sintomasSelecionados.contains(symptom)) {
        _sintomasSelecionados.remove(symptom);
      } else {
        _sintomasSelecionados.add(symptom);
      }
    });
  }
}
