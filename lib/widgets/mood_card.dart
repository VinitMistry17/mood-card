import 'package:flutter/material.dart';

import '../models/mood.dart';

class MoodCard extends StatelessWidget {
  final Mood mood;

  const MoodCard({super.key, required this.mood});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 360),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: mood.color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: FadeTransition(opacity: animation, child: child),
            ),
            child: Text(
              mood.emoji,
              key: ValueKey(mood.emoji),
              style: const TextStyle(fontSize: 80),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Vinit Mistry',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Flutter dev | widgets ka shauqeen',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 16),
          Text(
            'Mood: ${mood.label}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Text(
            mood.message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
          const Divider(height: 32),
          const Text(
            'Fun fact: Going with the flow is fun, until its results turn into facts we have to face.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}