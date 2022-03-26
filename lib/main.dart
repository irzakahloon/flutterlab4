import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dice = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blue,
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Random random = Random();
                      dice = random.nextInt(6) + 1;
                      print(dice);
                    });
                  },
                  child: Image.asset('image/dice$dice.png'),
                ),
              ))),
    );
  }
}
