import 'package:flutter/material.dart';
import 'package:unispace/core/constants/app_colors.dart';
import 'package:unispace/features/register/utils/space_option.dart';

class AppDropdownButton extends StatelessWidget {
  final SpaceOption? value;
  final void Function(SpaceOption? option) whenSelected;

  const AppDropdownButton({super.key, required this.whenSelected, required this.value});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<SpaceOption>(
      value: value,
      validator: (value) {
        if (value == null) {
          return "Por favor, selecione uma opção.";
        }
        return null;
      },
      items: const [
        DropdownMenuItem(
          value: SpaceOption.small,
          child: Text(
            "Pequeno",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.primaryBlack,
            ),
          ),
        ),
        DropdownMenuItem(
          value: SpaceOption.medium,
          child: Text(
            "Médio",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.primaryBlack,
            ),
          ),
        ),
        DropdownMenuItem(
          value: SpaceOption.large,
          child: Text(
            "Grande",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.primaryBlack,
            ),
          ),
        ),
      ],
      onChanged: whenSelected,
    );
  }
}
