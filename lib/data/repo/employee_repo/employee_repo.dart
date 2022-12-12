import 'package:dartz/dartz.dart';
import 'package:demo_app/core/error/base_error.dart';
import 'package:demo_app/data/models/employee.dart';

abstract class EmployeeRepo {
  Future<Either<Employee, BaseError>> getEmployee();
}
