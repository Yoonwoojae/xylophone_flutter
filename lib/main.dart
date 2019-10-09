import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget playSound(Color color, String soundNum) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNum.wav');
        },
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
              playSound(Colors.red, "1"),
              playSound(Colors.orange, "2"),
              playSound(Colors.yellow, "3"),
              playSound(Colors.green, "4"),
              playSound(Colors.blue, "5"),
              playSound(Colors.indigo, "6"),
              playSound(Colors.purple, "7"),
            ],
          ),
        ),
      ),
    );
  }
}
