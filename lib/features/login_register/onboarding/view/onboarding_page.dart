import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          onPressed: () {},
          child: Text(
            S.current.login_as_guest,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: const Color(0xFF757682)),
          ),
        ),
      ),
    );
  }
}
