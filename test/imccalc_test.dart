import 'package:imccalc/imccalc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculateImc(60, 1.7), 20.7);
  });
}
