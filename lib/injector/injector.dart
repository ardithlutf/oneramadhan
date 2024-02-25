import 'package:oneramadhan/injector/database_module.dart';
import 'package:oneramadhan/injector/repository_module.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'bloc_module.dart';
import 'rest_client_module.dart';
import 'service_module.dart';

class Injector {
  static GetIt instance = GetIt.instance;
  Injector._();

  static void init() {
    ServiceModule.init();
    RestClientModule.init();

    if (!kIsWeb) {
      // DatabaseModule.init();
      // DatabaseModule.initRepositories();
    }

    RepositoryModule.init();
    BlocModule.init();
  }

  static void reset() {
    instance.reset();
  }

  static void resetLazySingleton() {
    instance.resetLazySingleton();
  }
}
