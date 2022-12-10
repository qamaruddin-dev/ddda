import 'package:ddda/presentation/employee_list/employees_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/employee_list_cubit.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeListCubit, EmployeeListState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (employees) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return EmployeesListItem(employees: employees[index]);
              },
              itemCount: employees.length,
            );
          },
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
