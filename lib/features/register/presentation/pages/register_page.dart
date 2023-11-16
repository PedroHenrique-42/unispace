import 'package:flutter/material.dart';
import 'package:unispace/features/register/presentation/widgets/form_widget.dart';
import 'package:unispace/shared/components/app_bar_widget.dart';
import 'package:unispace/shared/components/app_drawer.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: AppDrawer(),
      appBar: AppBarWidget(),
      body: Center(child: FormWidget()),
    );
  }
}
