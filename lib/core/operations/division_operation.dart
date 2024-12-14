import 'package:dart_calculator/core/exceptions/calculator_exceptions.dart';
import 'package:dart_calculator/core/interfaces/operation.dart';

class DivisionOperation implements Operation {
  @override
  double execute(double firstOperand, double secondOperand) {
    if (secondOperand == 0) {
      throw DivisionByZeroException('0으로 나눌 수 없습니다.');
    }

    return firstOperand / secondOperand;
  }
}
