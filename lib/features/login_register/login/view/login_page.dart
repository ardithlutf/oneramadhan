import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/common/app_dimens.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/login_register/function/auth_functions.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/router/app_router.dart';
import 'package:oneramadhan/widgets/divider_widget.dart';
import 'package:oneramadhan/widgets/loading_widget.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AuthFunctionMixin {
  final AuthBloc _authBloc = Injector.instance<AuthBloc>();

  bool _isLoadingAuthCr = false, _isLoadingAuthGoogle = false;

  final TextEditingController textCUsername = TextEditingController();
  final TextEditingController textCPassword = TextEditingController();

  @override
  void initState() {
    _authBloc.add(const AuthEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>.value(
      value: _authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == UIStatus.loading) {
            setState(() {
              _isLoadingAuthCr = true;
              _isLoadingAuthGoogle = true;
            });
          }
          if (state.status == UIStatus.loadingAuthCr) {
            setState(() {
              _isLoadingAuthCr = true;
            });
          }
          if (state.status == UIStatus.loadingAuthGoogle) {
            setState(() {
              _isLoadingAuthGoogle = true;
            });
          }
          if (state.status == UIStatus.authSuccess) {
            setState(() {
              _isLoadingAuthCr = false;
              _isLoadingAuthGoogle = false;
              handleAuthSignInSuccess(context, state, state.displayName);
            });
          }
          if (state.status == UIStatus.authFailed) {
            setState(() {
              _isLoadingAuthCr = false;
              _isLoadingAuthGoogle = false;
              handleAuthFailed(context, state);
            });
          }
        },
        child: AbsorbPointer(
          absorbing: _isLoadingAuthCr || _isLoadingAuthGoogle,
          child: Scaffold(
            appBar: AppBar(title: Text(S.current.login)),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(AppDimens.padding16),
                  child: Column(
                    children: [
                      AppSpacing.verticalSpacing50,
                      TextField(
                        controller: textCUsername,
                        decoration: InputDecoration(
                          hintText: S.current.email,
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: const Color(0xFF757682),
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                      AppSpacing.verticalSpacing16,
                      TextField(
                        controller: textCPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: S.current.password,
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: const Color(0xFF757682),
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ),
                      AppSpacing.verticalSpacing32,
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();

                            _authBloc.add(AuthEvent.authEmailPassword(
                                username: textCUsername.text,
                                password: textCPassword.text));
                          },
                          child: _isLoadingAuthCr
                              ? LoadingWidget.circularWhite
                              : Text(
                                  S.current.login,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.white),
                                ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppDimens.padding27),
                        child: Row(
                          children: [
                            const Expanded(
                                child: DividerWidget.horizontalDivider),
                            Padding(
                              padding:
                                  const EdgeInsets.all(AppDimens.basePadding),
                              child: Text(
                                S.current.or,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: const Color(0xFF757682),
                                        fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Expanded(
                                child: DividerWidget.horizontalDivider),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();

                            _authBloc.add(const AuthEvent.authGoogle());
                          },
                          child: _isLoadingAuthGoogle
                              ? LoadingWidget.circularPrimary
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Assets.icons.google.svg(),
                                    AppSpacing.horizontalSpacing8,
                                    Text(
                                      S.current.sign_in_with_google,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: const Color(0xFF001442)),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                      AppSpacing.verticalSpacing16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.current.dont_have_account,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.w400),
                          ),
                          TextButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();

                              context.pushReplacement(AppRouter.register);
                            },
                            child: Text(S.current.sign_up),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: AppDimens.padding12),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  FocusScope.of(context).unfocus();

                  _authBloc.add(const AuthEvent.authGuest());
                },
                child: Text(
                  S.current.login_as_guest,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xFF757682)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
