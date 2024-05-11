import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset('assets/images/OneRamadhan1.svg'),
              ),
              const SizedBox(height: 44),
              Image.asset('assets/images/ilustration1.png'),
              Text(
                'Satu Aplikasi untuk Semua Aktivitas Ramadhan Anda',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 82),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Buat akun',
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
                  onPressed: () {},
                  child: Text(
                    'Sudah punya akun',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: const Color(0xFF001442)),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Masuk sebagai tamu',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: const Color(0xFF757682)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
