import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';
import 'package:unispace/core/constants/routes.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Colors.white,
          width: 5,
        ),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Na UNI'Space, você tem segurança\n e espaço, MUITO espaço.",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                shadows: <Shadow>[
                  const Shadow(
                    offset: Offset(3.5, 3.5),
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Text(
                "Vamos guardar?",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  shadows: <Shadow>[
                    const Shadow(
                      offset: Offset(3.5, 3.5),
                      blurRadius: 1.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Icon(
              Icons.arrow_drop_down_rounded,
              size: 12.h,
              color: AppColors.primaryWhite,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: AppColors.secondaryBrown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadowColor: AppColors.primaryWhite,
                elevation: 5,
              ),
              onPressed: () {
                Modular.to.navigate(Routes.register);
              },
              child: Text(
                "Começar",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(shadows: [
                  const Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 1.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
