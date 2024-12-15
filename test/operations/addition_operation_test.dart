import 'package:dart_calculator/core/operations/addition_operation.dart';
import 'package:test/test.dart';

void main() {
  test(('덧셈 연산 1 + 2는 3을 리턴'), () {
    final additionOperation = AdditionOperation();

    expect(additionOperation.execute(1, 2), 3);
  });
}
