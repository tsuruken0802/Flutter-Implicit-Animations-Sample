import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  @override
  _AnimatedPaddingScreenState createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  EdgeInsets _edgeInsets = EdgeInsets.all(20);

  double _randomPaddingValue() {
    return Random().nextInt(200).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding Sample'),
      ),
      body: Center(
          child: AnimatedPadding(
        padding: this._edgeInsets,
        duration: Duration(seconds: 1),
        child: Container(color: Colors.red),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            final Random random = Random();
            double top = this._randomPaddingValue();
            double right = this._randomPaddingValue();
            double left = this._randomPaddingValue();
            double bottom = this._randomPaddingValue();
            this._edgeInsets = EdgeInsets.only(
                top: top, right: right, left: left, bottom: bottom);
          });
        },
      ),
    );
  }
}
