// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeListDto _$EmployeeListDtoFromJson(Map<String, dynamic> json) {
  return _EmployeeListDto.fromJson(json);
}

/// @nodoc
mixin _$EmployeeListDto {
  String get status => throw _privateConstructorUsedError;
  List<EmployeeData> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeListDtoCopyWith<EmployeeListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListDtoCopyWith<$Res> {
  factory $EmployeeListDtoCopyWith(
          EmployeeListDto value, $Res Function(EmployeeListDto) then) =
      _$EmployeeListDtoCopyWithImpl<$Res, EmployeeListDto>;
  @useResult
  $Res call({String status, List<EmployeeData> data, String message});
}

/// @nodoc
class _$EmployeeListDtoCopyWithImpl<$Res, $Val extends EmployeeListDto>
    implements $EmployeeListDtoCopyWith<$Res> {
  _$EmployeeListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EmployeeData>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeListDtoCopyWith<$Res>
    implements $EmployeeListDtoCopyWith<$Res> {
  factory _$$_EmployeeListDtoCopyWith(
          _$_EmployeeListDto value, $Res Function(_$_EmployeeListDto) then) =
      __$$_EmployeeListDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<EmployeeData> data, String message});
}

/// @nodoc
class __$$_EmployeeListDtoCopyWithImpl<$Res>
    extends _$EmployeeListDtoCopyWithImpl<$Res, _$_EmployeeListDto>
    implements _$$_EmployeeListDtoCopyWith<$Res> {
  __$$_EmployeeListDtoCopyWithImpl(
      _$_EmployeeListDto _value, $Res Function(_$_EmployeeListDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_EmployeeListDto(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EmployeeData>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeListDto extends _EmployeeListDto {
  const _$_EmployeeListDto(
      {required this.status,
      required final List<EmployeeData> data,
      required this.message})
      : _data = data,
        super._();

  factory _$_EmployeeListDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeListDtoFromJson(json);

  @override
  final String status;
  final List<EmployeeData> _data;
  @override
  List<EmployeeData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'EmployeeListDto(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeListDto &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeListDtoCopyWith<_$_EmployeeListDto> get copyWith =>
      __$$_EmployeeListDtoCopyWithImpl<_$_EmployeeListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeListDtoToJson(
      this,
    );
  }
}

abstract class _EmployeeListDto extends EmployeeListDto {
  const factory _EmployeeListDto(
      {required final String status,
      required final List<EmployeeData> data,
      required final String message}) = _$_EmployeeListDto;
  const _EmployeeListDto._() : super._();

  factory _EmployeeListDto.fromJson(Map<String, dynamic> json) =
      _$_EmployeeListDto.fromJson;

  @override
  String get status;
  @override
  List<EmployeeData> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeListDtoCopyWith<_$_EmployeeListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeData _$EmployeeDataFromJson(Map<String, dynamic> json) {
  return _EmployeeData.fromJson(json);
}

/// @nodoc
mixin _$EmployeeData {
  int get id => throw _privateConstructorUsedError;
  String get employeeName => throw _privateConstructorUsedError;
  int get employeeSalary => throw _privateConstructorUsedError;
  int get employeeAge => throw _privateConstructorUsedError;
  String get profileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDataCopyWith<EmployeeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDataCopyWith<$Res> {
  factory $EmployeeDataCopyWith(
          EmployeeData value, $Res Function(EmployeeData) then) =
      _$EmployeeDataCopyWithImpl<$Res, EmployeeData>;
  @useResult
  $Res call(
      {int id,
      String employeeName,
      int employeeSalary,
      int employeeAge,
      String profileImage});
}

/// @nodoc
class _$EmployeeDataCopyWithImpl<$Res, $Val extends EmployeeData>
    implements $EmployeeDataCopyWith<$Res> {
  _$EmployeeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeName = null,
    Object? employeeSalary = null,
    Object? employeeAge = null,
    Object? profileImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeSalary: null == employeeSalary
          ? _value.employeeSalary
          : employeeSalary // ignore: cast_nullable_to_non_nullable
              as int,
      employeeAge: null == employeeAge
          ? _value.employeeAge
          : employeeAge // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeDataCopyWith<$Res>
    implements $EmployeeDataCopyWith<$Res> {
  factory _$$_EmployeeDataCopyWith(
          _$_EmployeeData value, $Res Function(_$_EmployeeData) then) =
      __$$_EmployeeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String employeeName,
      int employeeSalary,
      int employeeAge,
      String profileImage});
}

/// @nodoc
class __$$_EmployeeDataCopyWithImpl<$Res>
    extends _$EmployeeDataCopyWithImpl<$Res, _$_EmployeeData>
    implements _$$_EmployeeDataCopyWith<$Res> {
  __$$_EmployeeDataCopyWithImpl(
      _$_EmployeeData _value, $Res Function(_$_EmployeeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? employeeName = null,
    Object? employeeSalary = null,
    Object? employeeAge = null,
    Object? profileImage = null,
  }) {
    return _then(_$_EmployeeData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      employeeSalary: null == employeeSalary
          ? _value.employeeSalary
          : employeeSalary // ignore: cast_nullable_to_non_nullable
              as int,
      employeeAge: null == employeeAge
          ? _value.employeeAge
          : employeeAge // ignore: cast_nullable_to_non_nullable
              as int,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeData extends _EmployeeData {
  const _$_EmployeeData(
      {required this.id,
      required this.employeeName,
      required this.employeeSalary,
      required this.employeeAge,
      required this.profileImage})
      : super._();

  factory _$_EmployeeData.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeDataFromJson(json);

  @override
  final int id;
  @override
  final String employeeName;
  @override
  final int employeeSalary;
  @override
  final int employeeAge;
  @override
  final String profileImage;

  @override
  String toString() {
    return 'EmployeeData(id: $id, employeeName: $employeeName, employeeSalary: $employeeSalary, employeeAge: $employeeAge, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.employeeSalary, employeeSalary) ||
                other.employeeSalary == employeeSalary) &&
            (identical(other.employeeAge, employeeAge) ||
                other.employeeAge == employeeAge) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, employeeName, employeeSalary, employeeAge, profileImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeDataCopyWith<_$_EmployeeData> get copyWith =>
      __$$_EmployeeDataCopyWithImpl<_$_EmployeeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeDataToJson(
      this,
    );
  }
}

abstract class _EmployeeData extends EmployeeData {
  const factory _EmployeeData(
      {required final int id,
      required final String employeeName,
      required final int employeeSalary,
      required final int employeeAge,
      required final String profileImage}) = _$_EmployeeData;
  const _EmployeeData._() : super._();

  factory _EmployeeData.fromJson(Map<String, dynamic> json) =
      _$_EmployeeData.fromJson;

  @override
  int get id;
  @override
  String get employeeName;
  @override
  int get employeeSalary;
  @override
  int get employeeAge;
  @override
  String get profileImage;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeDataCopyWith<_$_EmployeeData> get copyWith =>
      throw _privateConstructorUsedError;
}
