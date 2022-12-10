part of 'employee_list_cubit.dart';

@freezed
class EmployeeListState with _$EmployeeListState {
  const factory EmployeeListState.initial() = _Initial;
  const factory EmployeeListState.loadInProgress() = _LoadInProgress;
  const factory EmployeeListState.loadSuccess(List<EmployeeData> employees) =
      _LoadSuccess;
  const factory EmployeeListState.loadFailure(
      EmployeeListFailure memberFailure) = _LoadFailure;
}
