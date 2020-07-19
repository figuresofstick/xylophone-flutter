import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

// This program is a XylophoneApp. It doesn't do a whole lot right now.
// There will be more functionality eventually. Hopefully I remember
// to take this comment out?
class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({int soundNumber, Color colour}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: colour,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, colour: Colors.red),
              buildKey(soundNumber: 2, colour: Colors.orange),
              buildKey(soundNumber: 3, colour: Colors.yellow),
              buildKey(soundNumber: 4, colour: Colors.green),
              buildKey(soundNumber: 5, colour: Colors.teal),
              buildKey(soundNumber: 6, colour: Colors.blue),
              buildKey(soundNumber: 7, colour: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
