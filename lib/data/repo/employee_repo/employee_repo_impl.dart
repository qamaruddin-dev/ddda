import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:demo_app/core/error/base_error.dart';
import 'package:demo_app/data/models/employee.dart';
import 'package:demo_app/data/repo/employee_repo/employee_repo.dart';
import 'package:http/http.dart' as http;

class EmployeeRepoImpl extends EmployeeRepo {
  final String baseUrl = 'https://dummy.restapiexample.com/api/v1/employee';

  @override
  Future<Either<Employee, BaseError>> getEmployee() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/1'));
      if (response.statusCode == 200) {
        return Left(
          Employee.fromJson(jsonDecode(response.body)),
        );
      } else {
        return Right(
          BaseError(message: 'Error occurred \n${response.body}'),
        );
      }
    } catch (e) {
      return Right(
        BaseError(message: 'Error occurred \n ${e.toString()}'),
      );
    }
  }
}
