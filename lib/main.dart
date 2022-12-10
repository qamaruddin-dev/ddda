import 'package:ddda/injection.dart';
import 'package:ddda/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.test);
  runApp(AppWidget());
}
