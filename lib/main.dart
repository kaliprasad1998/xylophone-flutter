import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey(int num, String name, Color a) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(num);
        },
        child: Text(name),
        color: a,
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
              buildKey(1, 'sa', Colors.red),
              buildKey(2, 're', Colors.orange),
              buildKey(3, 'ga', Colors.yellow),
              buildKey(4, 'ma', Colors.green),
              buildKey(5, 'pa', Colors.teal),
              buildKey(6, 'da', Colors.blue),
              buildKey(7, 'ni', Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
