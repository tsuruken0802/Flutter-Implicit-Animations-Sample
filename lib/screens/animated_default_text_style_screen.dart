import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedDefaultTestStyleScreen extends StatefulWidget {
  @override
  _AnimatedDefaultTestStyleScreenState createState() =>
      _AnimatedDefaultTestStyleScreenState();
}

class _AnimatedDefaultTestStyleScreenState
    extends State<AnimatedDefaultTestStyleScreen> {
  TextStyle _textStyle1 =
      TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.w400);

  TextStyle _textStyle2 =
      TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.bold);

  TextStyle _textStyle3 =
      TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.w900);

  int _textStyleType = 0;

  TextStyle get _currentTextStyle {
    switch (this._textStyleType) {
      case 0:
        return this._textStyle1;
      case 1:
        return this._textStyle2;
      case 2:
        return this._textStyle3;
      default:
        return this._textStyle1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedAlign Sample'),
      ),
      body: Center(
          child: AnimatedDefaultTextStyle(
        style: this._currentTextStyle,
        duration: Duration(seconds: 1),
        child: Center(
          child: const Text('TextStyleが変わります'),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            int nextTextStyleType = this._textStyleType += 1;
            if (nextTextStyleType > 2) {
              nextTextStyleType = 0;
            }
            this._textStyleType = nextTextStyleType;
          });
        },
      ),
    );
  }
}
