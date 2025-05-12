import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';

class FeelingDetailPage extends StatelessWidget {
  final String feelingName;
  final String feelingEmoji;

  const FeelingDetailPage({
    super.key,
    required this.feelingName,
    required this.feelingEmoji,
  });

  List<Map<String, dynamic>> getContentForFeeling() {
    final List<Map<String, dynamic>> contentList = [];

    // Different content items based on the feeling type
    switch (feelingName) {
      case 'Marah':
        contentList.addAll([
          {
            'title': 'Cara mengatasi amarah',
            'description':
                'Teknik pernapasan dan meditasi untuk menenangkan pikiran'
          },
          {
            'title': 'Doa ketika marah',
            'description': 'Bacaan doa yang dianjurkan saat sedang marah'
          },
          {
            'title': 'Hadits tentang pengendalian amarah',
            'description':
                'Hadits-hadits yang mengajarkan tentang menahan amarah'
          },
        ]);
        break;
      case 'Gembira':
        contentList.addAll([
          {
            'title': 'Syukur dalam kebahagiaan',
            'description': 'Cara mensyukuri nikmat Allah dalam kebahagiaan'
          },
          {
            'title': 'Berbagi kebahagiaan',
            'description': 'Sedekah dan berbagi kebahagiaan dengan sesama'
          },
          {
            'title': 'Doa syukur',
            'description': 'Bacaan doa syukur atas kebahagiaan yang diberikan'
          },
        ]);
        break;
      case 'Stress':
        contentList.addAll([
          {
            'title': 'Mengatasi stres dalam Islam',
            'description': 'Panduan mengatasi stres dari perspektif Islam'
          },
          {
            'title': 'Meditasi Islami',
            'description': 'Teknik meditasi sesuai ajaran Islam'
          },
          {
            'title': 'Doa menghilangkan kegelisahan',
            'description': 'Bacaan doa untuk menenangkan hati yang gelisah'
          },
        ]);
        break;
      case 'Damai':
        contentList.addAll([
          {
            'title': 'Mensyukuri kedamaian',
            'description': 'Refleksi dan syukur atas ketenangan hati'
          },
          {
            'title': 'Dzikir pagi dan petang',
            'description': 'Bacaan dzikir untuk menjaga kedamaian hati'
          },
          {
            'title': 'Ayat-ayat Al-Quran tentang ketenangan',
            'description': 'Ayat-ayat yang membawa ketenangan jiwa'
          },
        ]);
        break;
      case 'Malas':
        contentList.addAll([
          {
            'title': 'Motivasi Islami melawan kemalasan',
            'description': 'Cara mengatasi rasa malas dalam beribadah'
          },
          {
            'title': 'Dampak kemalasan dalam Islam',
            'description': 'Perspektif Islam tentang kemalasan dan akibatnya'
          },
          {
            'title': 'Doa menghilangkan rasa malas',
            'description': 'Bacaan doa untuk meningkatkan semangat beraktivitas'
          },
        ]);
        break;
      case 'Semangat':
        contentList.addAll([
          {
            'title': 'Menjaga semangat dalam beribadah',
            'description': 'Tips menjaga istiqomah dalam beribadah'
          },
          {
            'title': 'Motivasi dari kisah para sahabat',
            'description': 'Kisah inspiratif semangat para sahabat nabi'
          },
          {
            'title': 'Doa untuk keberkahan aktivitas',
            'description': 'Bacaan doa sebelum memulai aktivitas'
          },
        ]);
        break;
      default:
        contentList.add({
          'title': 'Content tidak tersedia',
          'description': 'Belum ada konten untuk kategori ini'
        });
    }

    return contentList;
  }

  @override
  Widget build(BuildContext context) {
    final contentList = getContentForFeeling();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Row(
          children: [
            Text(
              feelingName,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            Text(
              feelingEmoji,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: contentList.length,
        itemBuilder: (context, index) {
          final item = contentList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                item['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  item['description'],
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(content: Text('Membuka ${item['title']}')));
              },
            ),
          );
        },
      ),
    );
  }
}
