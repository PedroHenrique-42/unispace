import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/features/home/home_module.dart';
import 'package:unispace/features/register/external/mock_data/mock_data.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(MockData.new);
  }

  @override
  void routes(r) {
    r.module(Routes.home, module: HomeModule());
  }
}
