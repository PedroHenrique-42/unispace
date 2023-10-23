import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/features/register/external/mock_data/mock_data.dart';

class ListRegistersPage extends StatelessWidget {
  const ListRegistersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Modular.get<MockData>().listRegister.length,
        itemBuilder: (context, index) {
          return Text(
            Modular.get<MockData>().listRegister[index].spaceSize.toString(),
          );
        },
      ),
    );
  }
}
