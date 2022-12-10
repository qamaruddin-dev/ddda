import 'package:ddda/presentation/employee_list/employee_list_screen.dart';
import 'package:flutter/material.dart';

import '../screen_transition/fade_transition_route.dart';
import '../startup_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case StartUpScreen.routeName:
        return FadeTransitionRoute(
          page: StartUpScreen(),
        );
      case EmployeeListScreen.routeName:
        return FadeTransitionRoute(
          page: const EmployeeListScreen(),
        );
      default:
        return FadeTransitionRoute(
          page: StartUpScreen(),
        );
    }
  }
}
