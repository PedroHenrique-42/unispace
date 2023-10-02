import 'package:unispace/features/register/utils/space_option.dart';
import 'package:uuid/uuid.dart';

class Register {
  String id = const Uuid().v4();
  String name;
  String phone;
  SpaceOption spaceSize;

  Register({
    required this.name,
    required this.phone,
    required this.spaceSize,
  });
}
