import 'dart:convert';
import 'dart:io';

String terminalReader() {
  var reader = stdin.readLineSync(encoding: utf8);
  if (reader != null) {
    return reader;
  }
  return '0';
}

double convertDouble(var numero) {
  double num = numero;
  String numAsString = num.toStringAsFixed(1); // Limita a 2 casas decimais
  double numLimited =
      double.parse(numAsString); // Converte de volta para double
  return numLimited;
}
