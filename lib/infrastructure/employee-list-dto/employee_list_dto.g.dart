// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeListDto _$$_EmployeeListDtoFromJson(Map<String, dynamic> json) =>
    _$_EmployeeListDto(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => EmployeeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_EmployeeListDtoToJson(_$_EmployeeListDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

_$_EmployeeData _$$_EmployeeDataFromJson(Map<String, dynamic> json) =>
    _$_EmployeeData(
      id: json['id'] as int,
      employeeName: json['employee_name'] as String,
      employeeSalary: json['employee_salary'] as int,
      employeeAge: json['employee_age'] as int,
      profileImage: json['profile_image'] as String,
    );

Map<String, dynamic> _$$_EmployeeDataToJson(_$_EmployeeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employeeName,
      'employee_salary': instance.employeeSalary,
      'employee_age': instance.employeeAge,
      'profile_image': instance.profileImage,
    };
