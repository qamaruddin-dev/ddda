import 'package:ddda/domain/employee_list_failure.dart';
import 'package:ddda/infrastructure/employee-list-dto/employee_list_dto.dart';
import 'package:dartz/dartz.dart';

abstract class IEmployeeListRepository {
  Future<Either<EmployeeListFailure, List<EmployeeData>>> getEmployeeList();
}
