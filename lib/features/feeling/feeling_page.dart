import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/router/app_router.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';

class FeelingPage extends StatefulWidget {
  const FeelingPage({super.key});

  @override
  State<FeelingPage> createState() => _FeelingPageState();
}

class _FeelingPageState extends State<FeelingPage> {
  String? selectedFeeling;

  final List<Map<String, dynamic>> feelings = [
    {'name': 'Marah', 'emoji': '😡'},
    {'name': 'Gembira', 'emoji': '😊'},
    {'name': 'Stress', 'emoji': '😟'},
    {'name': 'Damai', 'emoji': '😌'},
    {'name': 'Malas', 'emoji': '🐻'},
    {'name': 'Semangat', 'emoji': '🔥'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'My Feeling',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Text(
              'Halo kawan, gimana perasaan kamu hari ini?',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: feelings.length,
                itemBuilder: (context, index) {
                  final feeling = feelings[index];
                  final isSelected = selectedFeeling == feeling['name'];

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFeeling = feeling['name'];
                      });

                      context.pushNamed(
                        AppRouter.feelingSelected,
                        pathParameters: {'name': feeling['name']},
                        extra: feeling['emoji'],
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color:
                              isSelected ? Colors.blue : Colors.grey.shade300,
                          width: isSelected ? 2 : 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            feeling['name'],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            feeling['emoji'],
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
