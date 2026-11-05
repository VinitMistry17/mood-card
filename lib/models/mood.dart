import 'package:flutter/material.dart';

class Mood {
  
  final String label;
  final String emoji;
  final String message;
  final Color color;

  const Mood({
    required this.label,
    required this.emoji,
    required this.message,
    required this.color,
  });
  
}

const List<Mood> moods = [
  Mood(
    label: 'Happy',
    emoji: '😄',
    message: 'Code ek baar me chal gaya. Shak mat karo, bas khush raho!',
    color: Color(0xFFFFE082),
  ),
  Mood(
    label: 'Focused',
    emoji: '🎯',
    message: 'Do not disturb. Bug ka encounter hone wala hai.',
    color: Color(0xFF90CAF9),
  ),
  Mood(
    label: 'Sleepy',
    emoji: '😴',
    message: 'Build chal raha hai, tab tak aankhein band.',
    color: Color(0xFFCE93D8),
  ),
  Mood(
    label: 'Hungry',
    emoji: '🍕',
    message: 'Pehle khana, phir Flutter. Priorities clear hain.',
    color: Color(0xFFFFAB91),
  ),
];