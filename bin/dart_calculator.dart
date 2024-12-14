import 'package:dart_calculator/calculator.dart';
import 'package:dart_calculator/core/operations/addition_operation.dart';
import 'package:dart_calculator/core/operations/division_operation.dart';
import 'package:dart_calculator/core/operations/multiplication_operation.dart';
import 'package:dart_calculator/core/operations/subtraction_operation.dart';
import 'package:dart_calculator/input_parser.dart';

void main(List<String> args) {
  final inputParser = InputParser();
  final parsedInput = inputParser.parseInput(args);

  final operations = {
    '+': AdditionOperation(),
    '-': SubtractionOperation(),
    '*': MultiplicationOperation(),
    '/': DivisionOperation(),
  };

  final calculator = Calculator(operations);

  final result = calculator.calculate(
    parsedInput[0],
    parsedInput[2],
    parsedInput[1],
  );

  print('Result: $result');
}
