import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/features/list_registers/list_registers_module.dart';
import 'package:unispace/features/register/presentation/pages/register_page.dart';

class RegisterModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(Routes.home, child: (context) => const RegisterPage());
    r.module(Routes.listRegisters, module: ListRegistersModule());
  }
}
