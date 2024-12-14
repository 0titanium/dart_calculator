import 'package:test/test.dart';
import 'package:dart_calculator/calculator.dart';

void main() {
  test(('뺄셈 연산 3 - 2는 1을 리턴'), () {
    final calculator = Calculator();

    expect(calculator.subtractionOperation(3, 2), 1);
  });
}
