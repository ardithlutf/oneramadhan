import 'package:go_router/go_router.dart';

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

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
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
    ],
  );
}
