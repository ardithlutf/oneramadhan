import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class CompleteRegisterPage extends StatelessWidget {
  const CompleteRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textCname = TextEditingController();
    TextEditingController textCdateBirth = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text(S.current.welcome)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            TextField(
              controller: textCname,
              decoration: InputDecoration(
                hintText: S.current.full_name,
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF757682),
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: textCdateBirth,
              decoration: InputDecoration(
                hintText: S.current.date_birth,
                hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF757682),
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                S.current.gender,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(S.current.man),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(S.current.women),
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  S.current.continue_register,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
