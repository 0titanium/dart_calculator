import 'package:test/test.dart';
import 'package:dart_calculator/calculator.dart';

void main() {
  test(('곱셈 연산 2 * 3은 6을 리턴'), () {
    final calculator = Calculator();

    expect(calculator.multiplicationOperation(2, 3), 6);
  });
}
