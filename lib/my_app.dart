import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _random = Random();
  final _colorNuber = 255;
  var _color = const Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _colorNuber,
        _random.nextInt(_colorNuber + 1),
        _random.nextInt(_colorNuber + 1),
        _random.nextInt(_colorNuber + 1),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test App'),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),
        body: GestureDetector(
          onTap: () {
            changeColor();
          },
          child: Container(
            color: _color,
            alignment: Alignment.center,
            child: const Text(
              'Hello',
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
