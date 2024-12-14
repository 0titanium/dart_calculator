import 'package:dart_calculator/core/errors/division_by_zero_error.dart';

class Calculator {
  double additionOperation(double firstOperand, double secondOperand) {
    return firstOperand + secondOperand;
  }

  double subtractionOperation(double firstOperand, double secondOperand) {
    return firstOperand - secondOperand;
  }

  double multiplicationOperation(double firstOperand, double secondOperand) {
    return firstOperand * secondOperand;
  }

  double divisionOperation(double firstOperand, double secondOperand) {
    if (secondOperand == 0) {
      throw DivisionByZeroError();
    }

    return firstOperand / secondOperand;
  }
}
