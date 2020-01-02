import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Myapp(),
          ),
        ),
      ),
    );

class Myapp extends StatelessWidget {
  Expanded play({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        play( color: Colors.red, number: 1),
        play( color: Colors.orange, number: 2),
        play( color: Colors.yellow, number: 3),
        play( color: Colors.green, number: 4),
        play( color: Colors.teal, number: 5),
        play( color: Colors.blue, number: 6),
        play( color: Colors.purple, number: 7),
      ],
    );
  }
}
