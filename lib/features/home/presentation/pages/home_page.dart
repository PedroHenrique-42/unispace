import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/assets.dart';
import 'package:unispace/features/home/presentation/widgets/banner_widget.dart';
import 'package:unispace/shared/components/app_bar_widget.dart';
import 'package:unispace/shared/components/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    double leftRightBannerPadding = screenSize < 1000 ? 10 : 0;

    return Scaffold(
      endDrawer: screenSize < 1000
          ? const AppDrawer()
          : null,
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 90.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Image.asset(Assets.logo, scale: 1.5),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.h,
                  left: leftRightBannerPadding,
                  right: leftRightBannerPadding,
                ),
                child: const BannerWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
