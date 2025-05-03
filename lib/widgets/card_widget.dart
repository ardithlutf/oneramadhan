import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: const AssetImage('assets/images/prayer/dzuhur.png'),
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(
          //   Colors.blue.withOpacity(0.3),
          //   BlendMode.dstATop,
          // ),
        ),
      ),
      child: PrayerTextAndCountdown(color: Colors.white),
    );
  }
}

class PrayerTextAndCountdown extends StatelessWidget {
  final Color color;

  const PrayerTextAndCountdown({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Zuhur', style: TextStyle(color: color, fontSize: 16)),
        SizedBox(height: 4),
        Text(
          '11:59',
          style: TextStyle(
            color: color,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text('2 jam 38 menit lagi',
            style: TextStyle(color: color, fontSize: 14)),
      ],
    );
  }
}

class CardLoginAccount extends StatelessWidget {
  const CardLoginAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Halo, Pejuang Ramadhan!',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text(
                    'Akses semua fitur, yuk~',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A1745),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: const Text(
                  'Masuk',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
