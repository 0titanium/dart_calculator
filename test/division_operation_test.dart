import 'package:test/test.dart';
import 'package:dart_calculator/calculator.dart';

void main() {
  test(('나눗셈 연산 4 / 2는 2를 리턴'), () {
    final calculator = Calculator();

    expect(calculator.divisionOperation(4, 2), 2);
  });
}
