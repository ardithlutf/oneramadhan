import 'package:oneramadhan/data/user/remote/user_repo.dart';
import 'package:oneramadhan/data/user/remote/user_repo_impl.dart';

import 'injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<UserRepository>(
      () => UserRepositoryImpl(
        userApiClient: injector(),
      ),
    );
  }
}
