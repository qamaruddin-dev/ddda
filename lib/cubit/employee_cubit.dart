import 'package:demo_app/cubit/employee_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/employee_repo/employee_repo.dart';

class EmployeeCubit extends Cubit<EmployeeState> {
  final EmployeeRepo employeeRepo;

  EmployeeCubit({required this.employeeRepo}) : super(InitEmployeeState());

  Future<void> fetchEmployeeData() async {
    emit(LoadingEmployeeState());
    final response = await employeeRepo.getEmployee();
    emit(
      response.fold(
        (employee) => SuccessEmployeeState(employee: employee),
        (error) => FailureEmployeeState(error: error),
      ),
    );
  }
}
