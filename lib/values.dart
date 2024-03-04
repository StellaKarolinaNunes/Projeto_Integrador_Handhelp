List<String> sintomasSeleccionados = [];

double intensidadeSelecionada = 5.0;

String tlabel = getColorLabel(intensidadeSelecionada);

String getColorLabel(double value) {
  if (value < 3) {
    return 'Muito Baixo';
  } else if (value < 5) {
    return 'Baixo';
  } else if (value < 7) {
    return 'Normal';
  } else if (value < 9) {
    return 'Alto';
  } else {
    return 'Muito Alto';
  }
}