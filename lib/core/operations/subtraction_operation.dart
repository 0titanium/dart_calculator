import 'package:dart_calculator/core/interfaces/operation.dart';

class SubtractionOperation implements Operation {
  @override
  double execute(double firstOperand, double secondOperand) {
    return firstOperand - secondOperand;
  }
}
