import 'package:app_freezed_pack/freezed_classes.dart';

void main() {
  final result = performOperation(2, Add(2));
  print(result);
}

int performOperation(int operand, Operation operation) {
  return operation.maybeWhen(
    orElse: () => -1,
    add: (value) => operand + value,
    subtract: (value) => operand - value,
  );
}
