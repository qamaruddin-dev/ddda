import 'package:demo_app/core/error/base_error.dart';
import 'package:demo_app/data/models/employee.dart';

abstract class EmployeeState {}

class InitEmployeeState extends EmployeeState {}

class LoadingEmployeeState extends EmployeeState {}

class FailureEmployeeState extends EmployeeState {
  final BaseError error;

  FailureEmployeeState({
    required this.error,
  });
}

class SuccessEmployeeState extends EmployeeState {
  final Employee employee;

  SuccessEmployeeState({
    required this.employee,
  });
}
