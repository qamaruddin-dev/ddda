import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'employee_list_dto.freezed.dart';
part 'employee_list_dto.g.dart';

@freezed
class EmployeeListDto with _$EmployeeListDto {
  const EmployeeListDto._();
  const factory EmployeeListDto({
    required String status,
    required List<EmployeeData> data,
    required String message,
  }) = _EmployeeListDto;

  factory EmployeeListDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeListDtoFromJson(json);
}

@freezed
class EmployeeData with _$EmployeeData {
  const EmployeeData._();
  const factory EmployeeData({
    required int id,
    required String employeeName,
    required int employeeSalary,
    required int employeeAge,
    required String profileImage,
  }) = _EmployeeData;

  factory EmployeeData.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDataFromJson(json);
}
