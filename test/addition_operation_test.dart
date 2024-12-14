import 'package:test/test.dart';
import 'package:dart_calculator/calculator.dart';

void main() {
  test(('덧셈 연산 1 + 2는 3을 리턴'), () {
    final calculator = Calculator();

    expect(calculator.additionOperation(1, 2), 3);
  });
}
