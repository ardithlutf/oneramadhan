import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/assets.gen.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textCUsername = TextEditingController();
    TextEditingController textCPassword = TextEditingController();
    TextEditingController textCConfirmPassword = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text(S.current.create_account)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            TextField(
              controller: textCUsername,
              decoration: InputDecoration(
                hintText: S.current.email,
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF757682),
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: textCConfirmPassword,
              obscureText: true,
              decoration: InputDecoration(
                hintText: S.current.confirm_password,
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
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
                onPressed: () {
                  context.push(AppRouter.completeRegister);
                },
                child: Text(
                  S.current.sign_up,
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
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
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
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.google.svg(),
                    const SizedBox(width: 8),
                    Text(
                      S.current.continue_with_google,
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
                  "${S.current.already_have_account}?",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(S.current.login),
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
