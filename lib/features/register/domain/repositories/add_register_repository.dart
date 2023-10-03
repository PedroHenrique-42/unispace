import 'package:dartz/dartz.dart';
import 'package:unispace/features/register/domain/entities/register.dart';
import 'package:unispace/features/register/domain/failures/register_failure.dart';

abstract class AddRegisterRepository {
  Future<Either<RegisterFailure, String>> addRegister(Register register);
}