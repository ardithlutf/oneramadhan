import 'package:oneramadhan/features/application/bloc/application_bloc.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/mainscreen/bloc/mainscreen_bloc.dart';
import 'package:oneramadhan/features/profile/bloc/profile_bloc.dart';
import 'package:oneramadhan/features/shalat/bloc/shalat_bloc.dart';

import 'injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerFactory<ApplicationBloc>(() =>
        ApplicationBloc(localStorageService: injector(), repo: injector()));

    injector.registerFactory<AuthBloc>(
        () => AuthBloc(localStorageService: injector()));
    injector.registerFactory<MainScreenBloc>(() => MainScreenBloc());
    injector.registerFactory<ProfileBloc>(() => ProfileBloc());
    injector.registerFactory<ShalatBloc>(() => ShalatBloc());
  }
}
