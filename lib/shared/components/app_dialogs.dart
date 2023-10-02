import 'package:flutter/material.dart';

class AppDialogs {
  static void showDefaultDialog(
    BuildContext context, {
    required String title,
    bool dismissible = true,
  }) {
    showDialog(
      barrierDismissible: dismissible,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
        );
      },
    );
  }
}
