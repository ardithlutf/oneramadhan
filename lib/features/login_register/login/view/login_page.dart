import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/common/app_enums.dart';
import 'package:oneramadhan/common/app_snackbar.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/login_register/function/auth_functions.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/router/app_router.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AuthFunctionMixin {
  late final AuthBloc _authBloc;

  bool _isLoading = false;

  final TextEditingController textCUsername = TextEditingController();
  final TextEditingController textCPassword = TextEditingController();

  @override
  void initState() {
    _authBloc = Injector.instance<AuthBloc>();
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
              _isLoading = true;
            });
          }
          if (state.status == UIStatus.authSuccess) {
            setState(() {
              _isLoading = false;
              handleAuthSignInSuccess(context, state, state.displayName);
            });
          }
          if (state.status == UIStatus.authFailed) {
            setState(() {
              _isLoading = false;
              handleAuthFailed(context, state);
            });
          }
        },
        child: AbsorbPointer(
          absorbing: _isLoading,
          child: Scaffold(
            appBar: AppBar(title: Text(S.current.login)),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 50),
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
                  const SizedBox(height: 16),
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
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        S.current.login,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 27),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            height: 1,
                            color: Color(0xFFC5C6D2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
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
                          child: Divider(
                            height: 1,
                            color: Color(0xFFC5C6D2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        _authBloc.add(const AuthEvent.authGoogle());
                      },
                      child: _isLoading
                          ? const SizedBox(
                              width: 15,
                              height: 15,
                              child: CircularProgressIndicator(strokeWidth: 3))
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Assets.icons.google.svg(),
                                const SizedBox(width: 8),
                                Text(
                                  S.current.sign_in_with_google,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xFF001442)),
                                ),
                              ],
                            ),
                    ),
                  ),
                  const SizedBox(height: 16),
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
                        onPressed: () {},
                        child: Text(S.current.sign_up),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
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
