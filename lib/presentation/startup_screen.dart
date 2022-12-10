import 'package:ddda/application/employee_list_cubit.dart';
import 'package:ddda/presentation/employee_list/employee_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/colors.dart';

class StartUpScreen extends StatelessWidget {
  static const routeName = '/';

  //const StartUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: ThemeColors.appBackground,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Welcome to Employee List",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Find out the list of employees :D",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ThemeColors.themeBlue,
                            ),
                            onPressed: () {
                              context
                                  .read<EmployeeListCubit>()
                                  .getEmployeesData();

                              Navigator.of(context).pushReplacementNamed(
                                  EmployeeListScreen.routeName);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: const Text(
                                "Fetch Employees",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
