import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_list_failure.freezed.dart';

@freezed
class EmployeeListFailure with _$EmployeeListFailure {
  const factory EmployeeListFailure.unexpected() = _Unexpected;
  const factory EmployeeListFailure.badRequest(String message) = _BadRequest;
}
