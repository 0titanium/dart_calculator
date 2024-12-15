import 'package:dart_calculator/calculator.dart';
import 'package:dart_calculator/core/exceptions/calculator_exceptions.dart';
import 'package:dart_calculator/core/operations/addition_operation.dart';
import 'package:dart_calculator/core/operations/division_operation.dart';
import 'package:dart_calculator/core/operations/multiplication_operation.dart';
import 'package:dart_calculator/core/operations/subtraction_operation.dart';
import 'package:test/test.dart';

void main() {
  final operations = {
    '+': AdditionOperation(),
    '-': SubtractionOperation(),
    '*': MultiplicationOperation(),
    '/': DivisionOperation(),
  };

  final calculator = Calculator(operations);

  group('Calculator 테스트', () {
    test('덧셈 연산 1 + 2는 3을 리턴', () {
      expect(calculator.calculate(1, 2, '+'), 3);
    });

    test('뺄셈 연산 2 - 1은 1을 리턴', () {
      expect(calculator.calculate(2, 1, '-'), 1);
    });

    test('곱셈 연산 2 * 3은 6을 리턴', () {
      expect(calculator.calculate(2, 3, '*'), 6);
    });

    test('나눗셈 연산 4 / 2는 2를 리턴', () {
      expect(calculator.calculate(4, 2, '/'), 2);
    });

    test('0으로 나누기는 Division By Zero Exception을 throw', () {
      expect(() => calculator.calculate(10, 0, '/'),
          throwsA(isA<DivisionByZeroException>()));
    });

    test('미지원 연산자는 Invalid Operation Exception을 throw', () {
      expect(() => calculator.calculate(5, 3, '%'),
          throwsA(isA<InvalidOperationException>()));
    });
  });
}
