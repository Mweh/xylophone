import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Xylophone App'),
        ),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            notePlay(1);
          },
          child: Container(
            color: Colors.red,
            height: 95,
          ),
        ),
        TextButton(
          onPressed: () {
            notePlay(2);
          },
          child: Container(
            color: Colors.orange,
            height: 95,
          ),
        ),
        TextButton(
          onPressed: () {
            notePlay(3);
          },
          child: Container(
            color: Colors.yellow,
            height: 95,
          ),
        ),
        TextButton(
          onPressed: () {
            notePlay(4);
          },
          child: Container(
            color: Colors.green,
            height: 95,
          ),
        ),
        TextButton(
          onPressed: () {
            notePlay(5);
          },
          child: Container(
            color: Colors.teal,
            height: 95,
          ),
        ),
        TextButton(
          onPressed: () {
            notePlay(6);
          },
          child: Container(
            color: Colors.blue,
            height: 95,
          ),
        ),
        TextButton(
          onPressed: () {
            notePlay(7);
          },
          child: Container(
            color: Colors.purple,
            height: 95,
          ),
        ),
      ],
    );
  }
}
