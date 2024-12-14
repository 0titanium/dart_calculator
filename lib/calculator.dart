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
    throw UnimplementedError();
  }
}
