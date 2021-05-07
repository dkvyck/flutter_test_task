import 'package:flutter/material.dart';
import 'package:test_task/screens/color_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestTask',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        ColorScreen.routeName: (ctx) => ColorScreen(),
      },
    );
  }
}
