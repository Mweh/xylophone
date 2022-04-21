import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: xyloApp(),
      ),
    );
  }
}

class xyloApp extends StatefulWidget {
  const xyloApp({Key? key}) : super(key: key);

  @override
  State<xyloApp> createState() => _xyloAppState();
}

class _xyloAppState extends State<xyloApp> {
  void notePlay(int noteNumber) {
    setState(() {
      final player = AudioCache();
      player.play('note$noteNumber.wav');
    });
  }

  void greet(String name) {
    print('Hello $name');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          notePlay(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: Colors.red, soundNumber: 1),
          buildKey(color: Colors.orange, soundNumber: 2),
          buildKey(color: Colors.yellow, soundNumber: 3),
          buildKey(color: Colors.green, soundNumber: 4),
          buildKey(color: Colors.teal, soundNumber: 5),
          buildKey(color: Colors.blue, soundNumber: 6),
          buildKey(color: Colors.purple, soundNumber: 7),
        ],
      ),
    );
  }
}
