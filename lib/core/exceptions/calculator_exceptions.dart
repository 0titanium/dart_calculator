class InvalidOperationException implements Exception {
  final String message;

  const InvalidOperationException(this.message);

  @override
  String toString() => 'Invalid Operation Exception: $message';
}

class InvalidInputException implements Exception {
  final String message;

  const InvalidInputException(this.message);

  @override
  String toString() => 'Invalid Input Exception: $message';
}

class DivisionByZeroException implements Exception {
  final String message;

  const DivisionByZeroException(this.message);

  @override
  String toString() => 'Division By Zero Exception: $message';
}
