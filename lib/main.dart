import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Magic 8 Ball',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //code yaha pr
  int selection = 1;

  changedSelection() {
    selection = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
            onPressed: () {
              print('ButtonPressed $selection');
              setState(() {
                changedSelection();
              });
            },
            child: Image.asset('images/ball$selection.png')),
      ),
    );
  }
}
