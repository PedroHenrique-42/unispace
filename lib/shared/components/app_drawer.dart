import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';
import 'package:unispace/core/constants/routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryYellow,
      width: 70.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Modular.to.navigate(Routes.home);
            },
            child: Text(
              'Home',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          TextButton(
            onPressed: () {
              Modular.to.navigate(Routes.about);
            },
            child: Text(
              'Sobre',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          TextButton(
            onPressed: () {
              Modular.to.navigate(Routes.register);
            },
            child: Text(
              'Alugar',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          TextButton(
            onPressed: () {
              Modular.to.navigate(Routes.listRegisters);
            },
            child: Text(
              'Ver registros',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
