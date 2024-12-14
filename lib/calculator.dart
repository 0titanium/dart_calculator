import 'package:dart_calculator/core/exceptions/calculator_exceptions.dart';
import 'package:dart_calculator/core/interfaces/calculator_interface.dart';
import 'package:dart_calculator/core/interfaces/operation.dart';

class Calculator implements CalculatorInterface {
  final Map<String, Operation> _operations;

  Calculator(this._operations);

  @override
  double calculate(
    double a,
    double b,
    String operation,
  ) {
    if (!_operations.containsKey(operation)) {
      throw InvalidOperationException('Unsupported operation: $operation');
    }
    return _operations[operation]!.execute(a, b);
  }
}
