import 'package:dio/dio.dart';
import 'package:rest_api/src/models/user/user.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;

  @GET('/role')
  Future<User> getUser();
}
