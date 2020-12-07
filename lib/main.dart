import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  PlaySound(1);
                },
                child: Text('Note 1'),
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  PlaySound(2);
                },
                child: Text('Note 2'),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  PlaySound(3);
                },
                child: Text('Note 3'),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  PlaySound(4);
                },
                child: Text('Note 4'),
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  PlaySound(5);
                },
                child: Text('Note 5'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  PlaySound(6);
                },
                child: Text('Note 6'),
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  PlaySound(7);
                },
                child: Text('Note 7'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
