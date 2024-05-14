import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/features/mainscreen/mainscreen_page.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';

import '../features/login_register/complete_register/view/complete_register_page.dart';
import '../features/login_register/login/view/login_page.dart';
import '../features/login_register/onboarding/view/onboarding_page.dart';
import '../features/login_register/register/view/register_page.dart';

class AppRouter {
  AppRouter._();

  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String completeRegister = '/complete-register';
  static const String mainscreen = '/mainscreen';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        redirect: (BuildContext context, GoRouterState state) {
          final bool _isAlreadyLoggedIn =
              Injector.instance<LocalStorageService>().isLoggedIn;
          if (_isAlreadyLoggedIn) {
            return AppRouter.mainscreen;
          } else {
            return AppRouter.home;
          }
        },
        path: home,
        builder: (context, state) => const OnBoardingPage(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => LoginPage(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: completeRegister,
        builder: (context, state) => const CompleteRegisterPage(),
      ),
      GoRoute(
        path: mainscreen,
        builder: (context, state) => const MainScreenPage(),
      ),
    ],
  );
}
