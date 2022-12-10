import 'package:ddda/presentation/employee_list/employee_list.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class EmployeeListScreen extends StatelessWidget {
  const EmployeeListScreen({super.key});
  static const routeName = '/employeelist';

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: ThemeColors.dmBackground,
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: ThemeColors.dmBackground,
        body: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: EmployeeList(),
            ),
          ],
        ),
      ),
    );
  }
}
