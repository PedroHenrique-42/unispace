import 'package:dartz/dartz.dart';
import 'package:unispace/features/register/domain/entities/register.dart';
import 'package:unispace/features/register/domain/failures/register_failure.dart';
import 'package:unispace/features/register/domain/repositories/add_register_repository.dart';
import 'package:unispace/features/register/domain/use_cases/add_register_use_case.dart';

class AddRegisterUseCaseImpl implements AddRegisterUseCase {
  final AddRegisterRepository repository;

  AddRegisterUseCaseImpl({required this.repository});

  @override
  Future<Either<RegisterFailure, String>> addRegister(Register register) {
    return repository.addRegister(register);
  }
}
