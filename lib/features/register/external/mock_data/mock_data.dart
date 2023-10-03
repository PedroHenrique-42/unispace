import 'package:unispace/features/register/domain/entities/register.dart';

class MockData {
  static final List<Register> _registerList = [];

  static String addRegister(Register register) {
    _registerList.add(register);
    return "sucesss";
  }

  // static String deleteRegister(Register register) {
  //   _registerList.removeWhere((element) => );
  // }

  static void clearRegisters() {
    _registerList.clear();
  }
}
