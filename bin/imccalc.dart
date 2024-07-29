import 'package:imccalc/classes/pessoa.dart';
import 'package:imccalc/exibe.dart';
import 'package:imccalc/imccalc.dart' as imccalc;

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa();

  coletaDadosPessoa(pessoa);

  var imc = imccalc.calculateImc(pessoa.peso, pessoa.altura);

  exibeResultado(imc);
}
