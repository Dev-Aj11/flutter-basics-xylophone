import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote({int noteNum}) {
    final player = AudioCache();
    player.play("note$noteNum.wav");
  }

  Expanded buildKey({int keyNum}) {
    List<Color> colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple
    ];
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playNote(noteNum: keyNum);
        },
        style: ElevatedButton.styleFrom(
          primary: colors[keyNum - 1],
        ),
        child: Text(""),
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
            children: [
              buildKey(keyNum: 1),
              buildKey(keyNum: 2),
              buildKey(keyNum: 3),
              buildKey(keyNum: 4),
              buildKey(keyNum: 5),
              buildKey(keyNum: 6),
              buildKey(keyNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
