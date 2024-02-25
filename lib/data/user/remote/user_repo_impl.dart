import 'package:rest_api/rest_api.dart';
import 'user_repo.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required UserApiClient userApiClient,
  }) : _userApiClient = userApiClient;

  late final UserApiClient _userApiClient;

  /// Remote
  @override
  Future<User> getUser() async {
    return await _userApiClient
        .getUser()
        .catchError(ExceptionHandler.handleException);
  }
}
