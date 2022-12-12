import 'package:demo_app/cubit/employee_cubit.dart';
import 'package:demo_app/data/repo/employee_repo/employee_repo.dart';
import 'package:demo_app/data/repo/employee_repo/employee_repo_impl.dart';
import 'package:demo_app/presentation/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmployeeCubit>(
      create: (context) => EmployeeCubit(employeeRepo: EmployeeRepoImpl()),
      child: MaterialApp(
        title: 'Employee Data Fetch Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
