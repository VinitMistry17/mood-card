# Mood Card

A small Flutter app with one screen: a card about me that changes with my mood.

**Name:** Vinit Mistry

## Features

- Card with my name, a one-line tagline and an emoji
- "Change mood" button that cycles through 4 moods: Happy 😄, Focused 🎯, Sleepy 😴, Hungry 🍕
- Each mood changes the emoji, the short message and the card colour
- Animations: `AnimatedContainer` for the card colour and `AnimatedSwitcher` for the emoji
- State managed with `setState` only, no external packages

## Creative touch

A quote at the bottom of the card that shows my personality:

> "Going with the flow is fun, but the results are facts we have to face."

## 📱 Download APK

[⬇️ Download Mood Card APK](https://github.com/VinitMistry17/mood-card/raw/refs/heads/main/app-arm64-v8a-release.apk)

## How to run

1. Install [Flutter](https://docs.flutter.dev/get-started/install)
2. Clone the repository:
   ```bash
   git clone https://github.com/VinitMistry17/mood-card.git
   cd mood-card
   ```
3. Get dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app (Chrome, emulator or a connected device):
   ```bash
   flutter run -d chrome
   ```

## Project structure

```
lib/
├── main.dart                      # App entry point
├── models/mood.dart               # Mood class and the list of moods
├── screens/mood_card_screen.dart  # Screen with state and the button
└── widgets/mood_card.dart         # Card UI with animations
```
