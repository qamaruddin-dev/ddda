import 'package:demo_app/cubit/employee_cubit.dart';
import 'package:demo_app/presentation/screens/home_page/widgets/user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/employee_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Data Fetch Demo'),
      ),
      body: BlocBuilder<EmployeeCubit, EmployeeState>(
        builder: (context, state) {
          if (state is InitEmployeeState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Press the below button to get Employee data',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<EmployeeCubit>().fetchEmployeeData();
                    },
                    child: const Text('Press Me!!!'),
                  ),
                ],
              ),
            );
          } else if (state is LoadingEmployeeState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SuccessEmployeeState) {
            return Center(
              child: UserData(
                employee: state.employee,
              ),
            );
          } else if (state is FailureEmployeeState) {
            return Center(
              child: Text(state.error.message),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
