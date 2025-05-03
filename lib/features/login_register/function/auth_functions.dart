import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/common/app_enums.dart';
import 'package:oneramadhan/common/app_snackbar.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/router/app_router.dart';

mixin AuthFunctionMixin {
  handleAuthSignInSuccess(
      BuildContext context, AuthState state, String displayName) {
    SimpleGlobalSnackBar.show(
        context,
        SnackBarBehavior.floating,
        'You are logged in as ${state.loginAs.name == 'guest' ? 'guest' : displayName}',
        TypeSnackbarEnum.success);

    context.go(AppRouter.mainscreen);
  }

  handleAuthSignOutSuccess(BuildContext context, AuthState state) {
    context.pushReplacement(AppRouter.home);
  }

  handleAuthFailed(BuildContext context, AuthState state) {
    SimpleGlobalSnackBar.show(context, SnackBarBehavior.floating, state.error,
        TypeSnackbarEnum.failed);
  }
}
