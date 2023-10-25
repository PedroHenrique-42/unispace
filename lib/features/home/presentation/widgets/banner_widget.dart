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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(
            color: AppColors.primaryWhite,
            width: 5,
          ),
        ),
        width: MediaQuery.of(context).size.width > 1000 ? 55.w : 80.w,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Na UNI'Space, você tem segurança\n e espaço, MUITO espaço.",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  "Vamos guardar?",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Icon(
                Icons.arrow_drop_down_rounded,
                size: 12.h,
                color: AppColors.primaryWhite,
              ),
              Container(
                height: MediaQuery.of(context).size.width > 1000 ? 50 : 40,
                width: MediaQuery.of(context).size.width > 1000 ? 10.w : 30.w,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryBrown,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Modular.to.navigate(Routes.formatRoute(Routes.register));
                  },
                  child: Text(
                    "Começar",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
