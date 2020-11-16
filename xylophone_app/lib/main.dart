import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
      XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber) {
  final player =  AudioCache();
  player.play('note$noteNumber.wav');
}

Expanded getNote({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundNumber);
      },
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getNote(color: Colors.red, soundNumber: 1),
              getNote(color: Colors.green, soundNumber: 2),
              getNote(color: Colors.yellow, soundNumber: 3),
              getNote(color: Colors.brown, soundNumber: 4),
              getNote(color: Colors.blue, soundNumber: 5),
              getNote(color: Colors.purple, soundNumber: 6),
              getNote(color: Colors.cyan, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
