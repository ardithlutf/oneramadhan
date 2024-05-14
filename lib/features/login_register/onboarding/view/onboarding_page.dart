import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/login_register/function/auth_functions.dart';
import 'package:oneramadhan/injector/injector.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage>
    with AuthFunctionMixin {
  late final AuthBloc _authBloc;

  bool _isLoading = false;

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
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Assets.images.oneRamadhan1.svg(),
                    ),
                    const SizedBox(height: 44),
                    Assets.images.ilustration1.image(),
                    Text(
                      S.current.intro_onboarding,
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 82),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.push(AppRouter.register);
                        },
                        child: Text(
                          S.current.create_account,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          context.push(AppRouter.login);
                        },
                        child: Text(
                          S.current.already_have_account,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: const Color(0xFF001442)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: AbsorbPointer(
            absorbing: _isLoading,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  _authBloc.add(const AuthEvent.authGuest());
                },
                child: _isLoading
                    ? const SizedBox(
                        width: 15,
                        height: 15,
                        child: CircularProgressIndicator(strokeWidth: 3))
                    : Text(
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
