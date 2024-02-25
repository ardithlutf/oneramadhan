import 'package:rest_api/rest_api.dart';

abstract class UserRepository {
  /// Remote
  Future<User> getUser();
}
