abstract class RegisterFailure implements Exception {
  String message;

  RegisterFailure(this.message);
}

class AddRegisterFailure extends RegisterFailure {
  AddRegisterFailure({required String message}) : super(message);
}
