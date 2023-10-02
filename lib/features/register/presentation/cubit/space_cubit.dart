import 'package:bloc/bloc.dart';
import 'package:unispace/features/register/domain/entities/register.dart';
import 'package:unispace/features/register/presentation/cubit/space_state.dart';

class SpaceCubit extends Cubit<SpaceState> {
  static final List<Register> _registerList = [];

  SpaceCubit() : super(SpaceInitial());

  void add({required Register register}) {
    _registerList.add(register);
    emit(SpaceSuccess(_registerList));
  }
}
