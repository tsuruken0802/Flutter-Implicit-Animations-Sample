import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 50;
  double _height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Sample'),
      ),
      body: Center(
        child: AnimatedContainer(
          color: Colors.red,
          width: this._width,
          height: this._height,
          duration: Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this._width = Random().nextInt(300).toDouble();
            this._height = Random().nextInt(300).toDouble();
          });
        },
      ),
    );
  }
}
