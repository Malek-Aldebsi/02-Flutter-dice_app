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
          title: const Center(
            child: Text('Dice'),
          ),
        ),
        body: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int fstDice = 1;
  int scdDice = 1;

  void rand() {
    fstDice = Random().nextInt(6) + 1;
    scdDice = Random().nextInt(6) + 1;
  }

  @override
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
