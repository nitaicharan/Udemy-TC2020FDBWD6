import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: MyApp(),
    ),
  )
);

class MyApp extends StatefulWidget{
  @override
  _MyApp createState()=> _MyApp();
}

class _MyApp extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          final player = AudioCache();
          player.play('note1.wav');
        },
        child: Text('Click Me'),
      ),
    );
  }
}