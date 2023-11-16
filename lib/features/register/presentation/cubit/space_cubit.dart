import 'package:bloc/bloc.dart';
import 'package:unispace/features/register/domain/entities/register.dart';
import 'package:unispace/features/register/domain/use_cases/add_register_use_case.dart';
import 'package:unispace/features/register/external/mock_data/mock_data.dart';
import 'package:unispace/features/register/presentation/cubit/space_state.dart';

class SpaceCubit extends Cubit<SpaceState> {
  AddRegisterUseCase useCase;

  SpaceCubit({required this.useCase}) : super(SpaceInitial());

  void add({required Register register}) async {
    await useCase.addRegister(register);
    emit(SpaceSuccess(MockData.listRegister));
    backToInitialState();
  }

  backToInitialState() async {
    await Future.delayed(const Duration(milliseconds: 500));
    emit(SpaceInitial());
  }
}
