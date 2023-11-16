import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/themes/main_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        title: "UNI'Space",
        debugShowCheckedModeBanner: false,
        theme: MainTheme(context: context).lightTheme,
        routerConfig: Modular.routerConfig,
      ),
    );
  }
}
