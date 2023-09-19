import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/core/themes/main_theme.dart';
import 'package:unispace/presentation/screens/home_page.dart';
import 'package:unispace/presentation/screens/register_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: "UNI'Space",
        debugShowCheckedModeBanner: false,
        theme: MainTheme.getMainTheme(),
        routes: {
          Routes.home: (context) => const HomePage(),
          Routes.registerPage: (context) => const RegisterPage(),
        },
      ),
    );
  }
}
