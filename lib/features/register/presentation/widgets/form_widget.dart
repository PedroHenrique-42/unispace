import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/features/register/domain/entities/register.dart';
import 'package:unispace/features/register/presentation/cubit/space_cubit.dart';
import 'package:unispace/features/register/presentation/cubit/space_state.dart';
import 'package:unispace/features/register/utils/space_option.dart';
import 'package:unispace/features/register/presentation/widgets/app_dropdown_button.dart';
import 'package:unispace/shared/components/app_dialogs.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  SpaceOption spaceOption = SpaceOption.small;

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
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor, digite seu nome.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Digite seu nome",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                ),
                TextFormField(
                  controller: _phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Por favor, digite seu telefone.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Digite seu telefone",
                    hintStyle: TextStyle(fontSize: 16),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    TelefoneInputFormatter(),
                  ],
                ),
                AppDropdownButton(whenSelected: (option) {
                  spaceOption = option!;
                }),
                BlocBuilder<SpaceCubit, SpaceState>(
                  bloc: Modular.get<SpaceCubit>(),
                  builder: (context, state) {
                    if (state is SpaceSuccess) {
                      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                        AppDialogs.showDefaultDialog(
                          context,
                          title: "Aluguel feito com sucesso",
                          dismissible: false,
                        );
                        navigateToListRegistersPage();
                      });
                    }

                    return Container(
                      height:
                          MediaQuery.of(context).size.width > 1000 ? 50 : 40,
                      width: MediaQuery.of(context).size.width > 1000
                          ? 10.w
                          : 30.w,
                      decoration: const BoxDecoration(
                        color: AppColors.secondaryBrown,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            Modular.get<SpaceCubit>().add(
                              register: Register(
                                name: _nameController.text,
                                phone: _phoneController.text,
                                spaceSize: spaceOption,
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Alugar",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToListRegistersPage() {
    Future.delayed(const Duration(seconds: 1)).then(
      (value) {
        Modular.to.popAndPushNamed(
          ".${Routes.formatRoute(Routes.listRegisters)}",
        );
      },
    );
  }
}
