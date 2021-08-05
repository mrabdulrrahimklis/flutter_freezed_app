import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'freezed_classes.freezed.dart';
part 'freezed_classes.g.dart';

@freezed
class User with _$User {
  const factory User(String name, int age) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Operation with _$Operation {
  const factory Operation.add(int value) = Add;
  const factory Operation.subtract(int value) = Subtract;
  // factory OperationNested.fromJson(Map<String, dynamic> json) =>
  //     _$OperationNested(json);
}
