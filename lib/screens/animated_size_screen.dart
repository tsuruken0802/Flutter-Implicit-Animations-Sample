import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSizeScreen extends StatefulWidget {
  @override
  _AnimatedSizeScreenState createState() => _AnimatedSizeScreenState();
}

class _AnimatedSizeScreenState extends State<AnimatedSizeScreen>
    with SingleTickerProviderStateMixin {
  double _size = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSize Sample'),
      ),
      body: Center(
          child: Container(
        color: Colors.amberAccent,
        child: AnimatedSize(
            vsync: this,
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              size: this._size,
            )),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this._size = Random().nextInt(300).toDouble();
          });
        },
      ),
    );
  }
}
