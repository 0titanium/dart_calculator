import 'package:dart_calculator/core/operations/subtraction_operation.dart';
import 'package:test/test.dart';

void main() {
  test(('뺄셈 연산 3 - 2는 1을 리턴'), () {
    final subtractionOperation = SubtractionOperation();

    expect(subtractionOperation.execute(3, 2), 1);
  });
}
