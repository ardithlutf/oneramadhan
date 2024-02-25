import 'package:oneramadhan/features/application/bloc/application_bloc.dart';

import 'injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerSingleton<ApplicationBloc>(
        ApplicationBloc(localStorageService: injector()));

    // TODO: Register bloc here
    // injector.registerFactory<UserBloc>(
    //   () => UserBloc(
    //     userRepository: injector(),
    //     logService: injector(),
    //   ),
    // );
  }
}
