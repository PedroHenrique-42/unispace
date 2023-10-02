import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/features/list_registers/presentation/pages/list_registers_page.dart';

class ListRegistersModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(Routes.home, child: (context) => const ListRegistersPage());
  }
}
