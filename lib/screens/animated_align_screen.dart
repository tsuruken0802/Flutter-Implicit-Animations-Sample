import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatefulWidget {
  @override
  _AnimatedAlignScreenState createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  Alignment _alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedAlign Sample'),
      ),
      body: Center(
          child: AnimatedAlign(
        alignment: this._alignment,
        duration: Duration(seconds: 1),
        child: Container(color: Colors.red, width: 200, height: 200),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            if (this._alignment == Alignment.center) {
              this._alignment = Alignment.bottomLeft;
            } else {
              this._alignment = Alignment.center;
            }
          });
        },
      ),
    );
  }
}
