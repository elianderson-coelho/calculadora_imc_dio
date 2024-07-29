import 'package:imccalc/imccalc.dart' as imccalc;
import 'package:imccalc/classes/pessoa.dart';
import 'package:imccalc/terminal_reader.dart';

void exibeResultado(double imc) {
  if (imc.isFinite && !imc.isNegative) {
    print('IMC = $imc');
    print('Classificação: ${imccalc.imcClassification(imc)}');
  } else {
    print('Valores inválidos');
  }
}

Pessoa coletaDadosPessoa(Pessoa pessoa) {
  try {
    print('INFORME O NOME: ');
    pessoa.nome = terminalReader();
    print('INFORME O PESO');
    pessoa.peso = double.tryParse(terminalReader());
    print('INFORME A ALTURA: ');
    pessoa.altura = double.tryParse(terminalReader());
  } catch (e) {
    print('The exception thrown is $e');
  }
  return pessoa;
}
