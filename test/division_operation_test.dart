import 'package:dart_calculator/core/exceptions/calculator_exceptions.dart';
import 'package:dart_calculator/core/operations/division_operation.dart';
import 'package:test/test.dart';

void main() {
  final divisionOperation = DivisionOperation();

  group('나눗셈 연산 테스트', () {
    test(('나눗셈 연산 4 / 2는 2를 리턴'), () {
      expect(divisionOperation.execute(4, 2), 2);
    });

    test(('나눗셈 연산 2 / 0은 DivisionByZeroError'), () {
      expect(() => divisionOperation.execute(2, 0),
          throwsA(isA<DivisionByZeroException>()));
    });
  });
}
