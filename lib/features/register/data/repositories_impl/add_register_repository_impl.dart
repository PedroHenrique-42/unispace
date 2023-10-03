import 'package:dartz/dartz.dart';
import 'package:unispace/features/register/data/data_sources/add_register_data_source.dart';
import 'package:unispace/features/register/domain/entities/register.dart';
import 'package:unispace/features/register/domain/failures/register_failure.dart';
import 'package:unispace/features/register/domain/repositories/add_register_repository.dart';

class AddRegisterRepositoryImpl implements AddRegisterRepository {
  final AddRegisterDataSource dataSource;

  AddRegisterRepositoryImpl({required this.dataSource});

  @override
  Future<Either<RegisterFailure, String>> addRegister(Register register) async {
    try {
      return await dataSource.addRegister(register);
    } on RegisterFailure catch (error) {
      return Left(AddRegisterFailure(message: error.message));
    }
  }
}
