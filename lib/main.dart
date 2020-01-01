import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

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
      child: Text(nouns.last),
    );
  }
}