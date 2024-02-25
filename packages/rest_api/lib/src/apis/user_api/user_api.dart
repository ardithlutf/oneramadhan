import 'package:dio/dio.dart';
import 'package:rest_api/src/models/user/User.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

@RestApi()
abstract class UserApiClient {
  factory UserApiClient(Dio dio, {String baseUrl}) = _UserApiClient;

  @GET('/breeds/image/random')
  Future<User> getUser();
}
