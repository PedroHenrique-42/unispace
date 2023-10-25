import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unispace/features/register/data/data_sources/add_register_data_source.dart';
import 'package:unispace/features/register/domain/entities/register.dart';
import 'package:unispace/features/register/domain/failures/register_failure.dart';
import 'package:unispace/features/register/external/mock_data/mock_data.dart';

class AddRegisterOnStateDataSource implements AddRegisterDataSource {
  @override
  Future<Either<RegisterFailure, String>> addRegister(Register register) async {
    try {
      return Right(MockData.addRegister(register));
    } catch (error) {
      return Left(
        AddRegisterFailure(message: 'Não foi possível adicionar o registro'),
      );
    }
  }
}
