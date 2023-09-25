import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';

enum Options {
  small,
  medium,
  large;
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  Options selectedOption = Options.small;

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
        height: 50.h,
        width: MediaQuery.of(context).size.width > 1000 ? 55.w : 80.w,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor, digite seu nome.";
                    }
                    return null;
                  },
                  style: Theme.of(context).textTheme.labelMedium,
                  decoration: const InputDecoration(
                    hintText: "Digite seu nome",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor, digite seu telefone.";
                    }
                    return null;
                  },
                  style: Theme.of(context).textTheme.labelMedium,
                  decoration: const InputDecoration(
                    hintText: "Digite seu telefone",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                DropdownButtonFormField<Options>(
                  validator: (value) {
                    if (value == null) {
                      return "Por favor, selecione uma opção.";
                    }
                    return null;
                  },
                  items: [
                    DropdownMenuItem(
                      value: Options.small,
                      child: Text("Pequeno",
                          style: Theme.of(context).textTheme.labelMedium),
                    ),
                    DropdownMenuItem(
                      value: Options.medium,
                      child: Text("Médio",
                          style: Theme.of(context).textTheme.labelMedium),
                    ),
                    DropdownMenuItem(
                      value: Options.large,
                      child: Text(
                        "Grande",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
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
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => const AlertDialog(
                            title: Text(
                              "Produto alugado com sucesso!",
                            ),
                          ),
                        );

                        Future.delayed(const Duration(seconds: 2)).then(
                          (value) {
                            Navigator.pop(context);
                          },
                        );
                      }
                    },
                    child: Text(
                      "Alugar",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
