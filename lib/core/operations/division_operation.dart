import 'package:dart_calculator/core/errors/division_by_zero_error.dart';
import 'package:dart_calculator/core/interfaces/operation.dart';

class DivisionOperation implements Operation {
  @override
  double execute(double firstOperand, double secondOperand) {
    if (secondOperand == 0) {
      throw DivisionByZeroError();
    }

    return firstOperand / secondOperand;
  }
}
