import 'package:dart_calculator/errors/division_by_zero_error.dart';
import 'package:test/test.dart';
import 'package:dart_calculator/calculator.dart';

void main() {
  group('나눗셈 연산 테스트', () {
    test(('나눗셈 연산 4 / 2는 2를 리턴'), () {
      final calculator = Calculator();

      expect(calculator.divisionOperation(4, 2), 2);
    });

    test(('나눗셈 연산 2 / 0은 DivisionByZeroError'), () {
      final calculator = Calculator();

      expect(() => calculator.divisionOperation(2, 0),
          throwsA(isA<DivisionByZeroError>));
    });
  });
}
