import 'package:unispace/features/register/domain/entities/register.dart';

abstract class SpaceState {}

class SpaceInitial extends SpaceState {}

class SpaceLoading extends SpaceState {}

class SpaceSuccess extends SpaceState {
  List<Register> registerList;

  SpaceSuccess(this.registerList);
}

class SpaceError extends SpaceState {
  String error;

  SpaceError(this.error);
}
