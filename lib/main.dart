import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildkey(int sound, Color clr) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          playSound(sound);
        },
        style: TextButton.styleFrom(
          backgroundColor: clr,
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.teal),
              buildkey(6, Colors.blue),
              buildkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
