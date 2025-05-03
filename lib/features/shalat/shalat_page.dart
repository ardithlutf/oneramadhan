import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/widgets/card_widget.dart';

class PrayerTimesScreen extends StatelessWidget {
  const PrayerTimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(138, 241, 254, 1),
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/prayer/dzuhur.png'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 64),
                  child: PrayerTextAndCountdown(
                      color: Color.fromRGBO(22, 51, 117, 1))),
            ),
            const DateSelector(),
            const LocationCard(),
            PrayerTimesList(),
            const QuoteCard(),
            AppSpacing.verticalSpacing24,
          ],
        ),
      ),
    );
  }
}

class DateSelector extends StatelessWidget {
  const DateSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.chevron_left),
              Text('24 Ramadhan, 1445 H\nThu, 04 April 2024',
                  textAlign: TextAlign.center),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Card(
        child: ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Pasar Minggu'),
          subtitle: Text('Jakarta Selatan, Indonesia'),
        ),
      ),
    );
  }
}

class PrayerTimesList extends StatelessWidget {
  final List<Map<String, String>> prayerTimes = [
    {'name': 'Subuh', 'time': '04:40'},
    {'name': 'Zuhur', 'time': '11:59'},
    {'name': 'Asar', 'time': '15:15'},
    {'name': 'Maghrib', 'time': '18:00'},
    {'name': 'Isya', 'time': '19:08'},
  ];

  PrayerTimesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        child: Column(
          children: prayerTimes
              .map((prayer) => ListTile(
                    title: Text(prayer['name']!),
                    trailing: Text(prayer['time']!),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Card(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Rasulullah saw pernah ditanya, "Sedekah apakah yang paling mulia?" Beliau menjawab: "Yaitu sedekah dibulan Ramadhan"\n\nHR Tirmidzi',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
