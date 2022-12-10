import 'package:ddda/application/employee_list_cubit.dart';
import 'package:ddda/domain/i_employee_list_repository.dart';
import 'package:ddda/injection.dart';
import 'package:ddda/presentation/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EmployeeListCubit>(
      create: (context) => getIt<EmployeeListCubit>(),
      child: _App(),
    );
  }
}

class _App extends StatelessWidget {
  _App();
  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Employee List',
      initialRoute: '/',
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
