import 'package:flutter/material.dart';

import '../models/mood.dart';
import '../widgets/mood_card.dart';

class MoodCardScreen extends StatefulWidget {
  const MoodCardScreen({super.key});

  @override
  State<MoodCardScreen> createState() => _MoodCardScreenState();
}

class _MoodCardScreenState extends State<MoodCardScreen> {
  int _moodIndex = 0;

  void _changeMood() {
    setState(() {
      _moodIndex = (_moodIndex + 1) % moods.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MoodCard(mood: moods[_moodIndex]),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _changeMood,
                child: const Text('Change mood'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}