import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.deepOrange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftNumber = 1;
  var rightNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Player 1',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30.0,
                ),
              ),
              Text(
                'Player 2',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 75.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftNumber.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightNumber.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
