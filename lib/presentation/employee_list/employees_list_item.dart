import 'package:ddda/infrastructure/employee-list-dto/employee_list_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/colors.dart';

class EmployeesListItem extends StatelessWidget {
  final EmployeeData employees;

  const EmployeesListItem({
    super.key,
    required this.employees,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 10,
        bottom: 5,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        child: Theme(
          data: ThemeData(
            highlightColor: ThemeColors.channelRippleColor,
          ),
          child: ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.only(left: 10),
            onLongPress: () {},
            visualDensity: const VisualDensity(
              vertical: -2,
            ),
            minLeadingWidth: 20,
            tileColor: Colors.transparent,
            leading: CircleAvatar(
                backgroundImage: NetworkImage(employees.profileImage)),
            title: Text(
              employees.employeeName,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
