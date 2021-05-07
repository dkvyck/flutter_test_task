import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_task/widgets/tapable_appbar.dart';

class ColorScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _ColorScreenState createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color screenColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TapableAppBar(
        onTap: setRandomColor,
        appBar: AppBar(
          backgroundColor: screenColor,
          centerTitle: true,
          title: Text(
            'Test task',
            style: TextStyle(
              color: getContrastColor(screenColor),
            ),
          ),
        ),
      ),
      body: InkWell(
          onTap: setRandomColor,
          child: Container(
            color: screenColor,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text(
                "Hey there",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  color: getContrastColor(screenColor),
                ),
              ),
            ),
          )),
    );
  }

  void setRandomColor() {
    setState(() {
      screenColor = getRandomColor();
    });
  }

  Color getRandomColor() {
    var rand = Random();
    var r = rand.nextInt(255);
    var g = rand.nextInt(255);
    var b = rand.nextInt(255);
    return Color.fromARGB(255, r, g, b);
  }

  Color getContrastColor(Color color) {
    var luminance = 1 -
        (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) / 255;
    if (luminance > 0.5) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
