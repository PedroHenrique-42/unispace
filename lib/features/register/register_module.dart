import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/core/constants/routes.dart';
import 'package:unispace/features/register/data/data_sources/add_register_data_source.dart';
import 'package:unispace/features/register/data/repositories_impl/add_register_repository_impl.dart';
import 'package:unispace/features/register/data/use_cases_impl/add_register_use_case_impl.dart';
import 'package:unispace/features/register/domain/repositories/add_register_repository.dart';
import 'package:unispace/features/register/domain/use_cases/add_register_use_case.dart';
import 'package:unispace/features/register/external/data_sources_impl/add_register_on_state_data_source.dart';
import 'package:unispace/features/register/presentation/cubit/space_cubit.dart';
import 'package:unispace/features/register/presentation/pages/list_registers_page.dart';
import 'package:unispace/features/register/presentation/pages/register_page.dart';

class RegisterModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<AddRegisterDataSource>(AddRegisterOnStateDataSource.new);
    i.addLazySingleton<AddRegisterRepository>(AddRegisterRepositoryImpl.new);
    i.addLazySingleton<AddRegisterUseCase>(AddRegisterUseCaseImpl.new);
    i.addLazySingleton(SpaceCubit.new);
  }

  @override
  void routes(r) {
    r.child(Routes.home, child: (context) => const RegisterPage());
    r.child(
      Routes.listRegisters,
      child: (context) => const ListRegistersPage(),
    );
  }
}
