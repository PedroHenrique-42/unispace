import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/features/register/external/mock_data/mock_data.dart';
import 'package:unispace/features/register/presentation/widgets/form_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(Modular.get<MockData>().listRegister.toString());

    return const Scaffold(
      body: Center(child: FormWidget()),
    );
  }
}
