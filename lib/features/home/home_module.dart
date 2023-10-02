import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/features/home/presentation/pages/home_page.dart';
import 'package:unispace/features/register/register_module.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(Routes.home, child: (context) => const HomePage());
    r.module(Routes.register, module: RegisterModule());
  }
}
