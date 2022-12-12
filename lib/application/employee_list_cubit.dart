import 'package:ddda/application/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/i_employee_list_repository.dart';
import '../domain/employee_list_failure.dart';
import '../infrastructure/employee-list-dto/employee_list_dto.dart';
part 'employee_list_state.dart';
part 'employee_list_cubit.freezed.dart';

@injectable
class EmployeeListCubit extends Bloc<EmployeeEvents, EmployeeListState> {
  final IEmployeeListRepository _repository;

  EmployeeListCubit(this._repository)
      : super(const EmployeeListState.initial()) {
    on<EmployeeEvents>((event, emit) => employeeOperations(event));
  }

  /// Fetches a list of [employees] from the network
  /// Emits the list if successfull, [EmployeeListFailure] otherwise.

  Future employeeOperations(EmployeeEvents events) async {
    emit(const EmployeeListState.loadInProgress());
    switch (events) {
      case EmployeeEvents.fetchEmployees:
        {
          final failureOrEmployees = await _repository.getEmployeeList();
          emit(
            failureOrEmployees.fold(
              (f) => EmployeeListState.loadFailure(f),
              (members) => EmployeeListState.loadSuccess(members),
            ),
          );
          break;
        }
    }
  }
}
