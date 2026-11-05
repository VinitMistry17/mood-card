import 'package:flutter/material.dart';
import 'package:mood_card/screens/mood_screen.dart';

void main() => runApp(const MoodCardApp());

class MoodCardApp extends StatelessWidget {
  const MoodCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoodCardScreen(),
    );
  }
}