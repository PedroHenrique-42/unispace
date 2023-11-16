import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/core/constants/app_colors.dart';
import 'package:unispace/core/constants/routes.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;

    return AppBar(
      toolbarHeight: 1000,
      backgroundColor: AppColors.primaryYellow,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: TextButton(
        onPressed: () {
          Modular.to.navigate(Routes.home);
        },
        child: Text(
          "UNI'SPACE",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            shadows: <Shadow>[
              const Shadow(
                offset: Offset(3.5, 3.5),
                blurRadius: 1.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ],
          ),
        ),
      ),
      actions: screenSize < 1000
          ? null
          : [
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
    );
  }
}
