import 'package:oneramadhan/features/application/config_page.dart';
import 'package:oneramadhan/features/application/home_page.dart';
import 'package:oneramadhan/widgets/error_page.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String home = '/';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(title: 'One Ramadhan',),
      ),
    ],
  );
}
