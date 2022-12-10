import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:ddda/domain/i_employee_list_repository.dart';
import 'package:ddda/infrastructure/employee-list-dto/employee_list_dto.dart';
import 'package:dio/dio.dart';

import '../../domain/employee_list_failure.dart';

class EmployeeListRepository extends IEmployeeListRepository {
  final Dio _dio;
  final $baseUrl = "https://dummy.restapiexample.com/api/v1/employees";
  EmployeeListRepository(this._dio);

  @override
  Future<Either<EmployeeListFailure, List<EmployeeData>>>
      getEmployeeList() async {
    print("calling dio woahhh");
    try {
      final response = await _dio.get($baseUrl);
      //print("Dio Response:${response.data}");
      final results = jsonDecode(response.data)["data"];
      print("results:$results");
      List<EmployeeData> list = [];
      list = (results as List).map((i) => EmployeeData.fromJson(i)).toList();
      return right(list);
    } on DioError catch (err) {
      print("Dio Error: $err");
      return left(const EmployeeListFailure.unexpected());
    } on SocketException catch (err) {
      print("Dio Error: $err");
      return left(const EmployeeListFailure.unexpected());
    }
  }
}
