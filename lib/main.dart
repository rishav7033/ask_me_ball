import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[400],
        appBar: AppBar(
          title: Text('Ask Me Anything!!'),
          backgroundColor: Colors.teal[600],
        ),
        body: BallPage1(),
      ),
    ),
  );
}

class BallPage1 extends StatefulWidget {
  @override
  _BallPage1State createState() => _BallPage1State();
}

class _BallPage1State extends State<BallPage1> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballnumber = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$ballnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
