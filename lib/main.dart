import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  int BuildKey() {
    Expanded(
      child: FlatButton(
        color: Colors.red,
        onPressed: () {
          PlaySound(1);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            BuildKey(),
            BuildKey(),
            BuildKey(),
            BuildKey(),
            BuildKey(),
            BuildKey(),
            BuildKey(),
          ]),
        ),
      ),
    );
  }
}
