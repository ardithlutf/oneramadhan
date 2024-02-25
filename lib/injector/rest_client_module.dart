import 'package:oneramadhan/configs/app_config.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rest_api/rest_api.dart';

class RestClientModule {
  RestClientModule._();

  static void init() {
    final injector = Injector.instance;
    const String dioInstance = 'dioInstance';

    /// Dio
    injector.registerLazySingleton<Dio>(
      () {
        /// TODO: custom DIO here
        final Dio dio = Dio(
          BaseOptions(
            baseUrl: AppConfig.baseUrl,
          ),
        );
        if (!kReleaseMode) {
          dio.interceptors.add(
            LogInterceptor(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
              responseBody: true,
              request: false,
            ),
          );
        }
        return dio;
      },
      instanceName: dioInstance,
    );

    injector.registerFactory<UserApiClient>(
      () => UserApiClient(
        injector(instanceName: dioInstance),
      ),
    );
  }
}
