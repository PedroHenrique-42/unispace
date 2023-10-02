import 'package:flutter/material.dart';
import 'package:unispace/features/register/presentation/widgets/form_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: FormWidget()),
    );
  }
}
