import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  player.play('note1.wav');
                },
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note2.wav');
                },
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note3.wav');
                },
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note4.wav');
                },
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note5.wav');
                },
                color: Colors.teal,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note6.wav');
                },
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  player.play('note7.wav');
                },
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
