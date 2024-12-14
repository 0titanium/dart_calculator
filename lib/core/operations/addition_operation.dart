import 'package:dart_calculator/core/interfaces/operation.dart';

class AdditionOperation implements Operation {
  @override
  double execute(double firstOperand, double secondOperand) {
    return firstOperand + secondOperand;
  }
}
