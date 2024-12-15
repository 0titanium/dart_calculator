import 'package:dart_calculator/core/operations/multiplication_operation.dart';
import 'package:test/test.dart';

void main() {
  test(('곱셈 연산 2 * 3은 6을 리턴'), () {
    final multiplicationOperation = MultiplicationOperation();

    expect(multiplicationOperation.execute(2, 3), 6);
  });
}
