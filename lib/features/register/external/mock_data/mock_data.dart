import 'package:unispace/features/register/domain/entities/register.dart';

class MockData {
  final List<Register> _registerList = [];

  String addRegister(Register register) {
    _registerList.add(register);

    print(_registerList);
    return "sucesss";
  }

  void deleteRegister(Register register) {
    _registerList.removeWhere((element) => element.id == register.id);
  }

  void clearRegisters() {
    _registerList.clear();
  }

  List<Register> get listRegister {
    return _registerList;
  }
}
