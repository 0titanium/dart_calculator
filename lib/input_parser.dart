import 'core/exceptions/calculator_exceptions.dart';

class InputParser {
  bool _isValidOperand(String operand) {
    final regex = RegExp(r'^[0-9]+\.?[0-9]*$');
    return regex.hasMatch(operand);
  }

  bool _isValidOperation(String operation) {
    return ['+', '-', '*', '/'].contains(operation);
  }

  List<dynamic> parseInput(List<String> args) {
    if (args.length != 3) {
      throw InvalidInputException(
          'Invalid Input Exception. Input: operand operation operand');
    }

    final firstOperand = args[0];
    final operation = args[1];
    final secondOperand = args[2];

    if (!_isValidOperand(firstOperand)) {
      throw InvalidInputException('Invalid operand format: $firstOperand');
    }

    if (!_isValidOperand(secondOperand)) {
      throw InvalidInputException('Invalid operand format: $secondOperand');
    }

    if (!_isValidOperation(operation)) {
      throw InvalidInputException('Invalid operation: $operation');
    }

    return [double.parse(firstOperand), operation, double.parse(secondOperand)];
  }
}
