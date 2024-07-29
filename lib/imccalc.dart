import 'package:imccalc/terminal_reader.dart';

double calculateImc(double peso, double altura) {
  var imc = peso / (altura * altura);
  return convertDouble(imc);
}

String imcClassification(double imc) {
  if (imc < 16.0) {
    return 'magreza grave';
  } else if (imc >= 16 && imc < 17) {
    return 'magreza moderada';
  } else if (imc >= 17 && imc < 18.5) {
    return 'magreza leve';
  } else if (imc >= 18.5 && imc < 25) {
    return 'saudável';
  } else if (imc >= 25 && imc < 30) {
    return 'sobrepeso';
  } else if (imc >= 30 && imc < 35) {
    return 'obesidade grau I';
  } else if (imc >= 35 && imc < 40) {
    return 'obesidade grau II';
  } else if (imc >= 40) {
    return 'obesidade grau III';
  } else {
    return 'valor inválido';
  }
}
