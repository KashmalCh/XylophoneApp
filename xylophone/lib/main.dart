import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Xylophone(),
  ));
}

class Xylophone extends StatelessWidget {
  void playSound(int index)
  {
    final player = AudioCache();
    player.play('note$index.wav');
  }
  Expanded buildButton(Color col,int tone)
  {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(tone);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(Colors.red,1),
            buildButton(Colors.orange,2),
            buildButton(Colors.yellow,3),
            buildButton(Colors.green,4),
            buildButton(Colors.indigo,5),
            buildButton(Colors.blue,6),
            buildButton(Colors.purple,7),
          ],
        ),
      ),
    );
  }
}
