import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/features/home/home_module.dart';
import 'package:unispace/features/register/presentation/cubit/space_cubit.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(SpaceCubit.new);
  }

  @override
  void routes(r) {
    r.module(Routes.home, module: HomeModule());
  }
}
