import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: AMA(),
      ),
    ),
  );
}

class AMA extends StatefulWidget {
  @override
  _AMAState createState() => _AMAState();
}

class _AMAState extends State<AMA> {
  void play() {
    final player = AudioCache();
    player.play('note3.wav');
  }

  int number = 1;

  void Answer() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              Answer();
              play();
            },
            child: Image.asset('images/ball$number.png'),
          ),
        ),
      ],
    );
  }
}
