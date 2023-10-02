import 'package:flutter/material.dart';
import 'package:unispace/features/register/utils/space_option.dart';

class AppDropdownButton extends StatelessWidget {
  final void Function(SpaceOption? option) whenSelected;

  const AppDropdownButton({super.key, required this.whenSelected});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<SpaceOption>(
      validator: (value) {
        if (value == null) {
          return "Por favor, selecione uma opção.";
        }
        return null;
      },
      items: [
        DropdownMenuItem(
          value: SpaceOption.small,
          child:
              Text("Pequeno", style: Theme.of(context).textTheme.labelMedium),
        ),
        DropdownMenuItem(
          value: SpaceOption.medium,
          child: Text("Médio", style: Theme.of(context).textTheme.labelMedium),
        ),
        DropdownMenuItem(
          value: SpaceOption.large,
          child: Text(
            "Grande",
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
      onChanged: whenSelected,
    );
  }
}
