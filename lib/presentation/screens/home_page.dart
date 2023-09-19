import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/assets.dart';
import 'package:unispace/presentation/widgets/banner_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Image.asset(Assets.logo),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: const BannerWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
