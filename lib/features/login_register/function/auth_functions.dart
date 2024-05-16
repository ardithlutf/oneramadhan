import 'package:flutter/cupertino.dart';
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
        'You are logged in as ${state.loginAs.name == 'guest' ? 'guest' : displayName}',
        TypeSnackbarEnum.success);

    context.pushReplacement(AppRouter.home);
  }

  handleAuthSignOutSuccess(BuildContext context, AuthState state) {
    context.pushReplacement(AppRouter.home);
  }

  handleAuthFailed(BuildContext context, AuthState state) {
    SimpleGlobalSnackBar.show(context, state.error, TypeSnackbarEnum.failed);
  }
}
