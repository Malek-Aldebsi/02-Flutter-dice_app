import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: myApp(),
      ),
    ),
  );
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  int fstDice = 1;
  int scdDice = 1;

  void rand() {
    fstDice = Random().nextInt(6) + 1;
    scdDice = Random().nextInt(6) + 1;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rand();
                });
              },
              child: Image.asset('images/dice$fstDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rand();
                });
              },
              child: Image.asset('images/dice$scdDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
