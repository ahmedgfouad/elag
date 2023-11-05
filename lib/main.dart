import 'package:elag/core/utils/colors.dart';
import 'package:elag/features/auth/views/signup_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elag Tabe3y',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.beigeSecond),
        ),
      ),
      themeMode: ThemeMode.light,
      home: const SignupView(),
    );
  }
}
