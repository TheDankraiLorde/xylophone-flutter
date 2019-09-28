import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              BuildKey(soundNumber: 1, color: Colors.red),
              BuildKey(soundNumber: 2, color: Colors.orange),
              BuildKey(soundNumber: 3, color: Colors.yellow),
              BuildKey(soundNumber: 4, color: Colors.green),
              BuildKey(soundNumber: 5, color: Colors.blue),
              BuildKey(soundNumber: 6, color: Colors.indigo),
              BuildKey(soundNumber: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Widget BuildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }),
    );
  }
}
