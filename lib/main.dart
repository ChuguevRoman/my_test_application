import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const _MyApp());

class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
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
