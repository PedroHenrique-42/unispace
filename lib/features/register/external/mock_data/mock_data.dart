import 'package:unispace/features/register/domain/entities/register.dart';

class MockData {
  static final List<Register> _registerList = [];

  static String addRegister(Register register) {
    _registerList.add(register);
    return "success";
  }

  static void deleteRegister(Register register) {
    _registerList.removeWhere((element) => element.id == register.id);
  }

  static void clearRegisters() {
    _registerList.clear();
  }

  static List<Register> get listRegister {
    return _registerList;
  }
}
