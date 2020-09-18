import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'mainscreen.dart';
import 'notes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute : '/',
      routes : {
        '/' : (context) => Home(),
        '//' : (context) => Notes()
      }
    );
  }
}

