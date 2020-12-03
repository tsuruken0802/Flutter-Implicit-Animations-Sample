import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  @override
  _AnimatedPositionedScreenState createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  // top
  static final double _fromTop = 50;
  static final double _toTop = 100;
  double _top = _fromTop;

  // right
  static final double _fromRight = 150;
  static final double _toRight = 60;
  double _right = _fromRight;

  // left
  static final double _fromLeft = 0;
  static final double _toLeft = 60;
  double _left = _fromLeft;

  // bottom
  static final double _fromBottom = 50;
  static final double _toBottom = 100;
  double _bottom = _fromBottom;

  // fromとtoのフラグ
  bool isFrom = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned Sample'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: 400,
              height: 400,
              color: Colors.red,
            )),
            AnimatedPositioned(
                duration: Duration(seconds: 1),
                top: this._top,
                right: this._right,
                left: this._left,
                bottom: this._bottom,
                child: Container(
                  color: Colors.green,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this.isFrom = !this.isFrom;
            this._top = this.isFrom ? _fromTop : _toTop;
            this._right = this.isFrom ? _fromRight : _toRight;
            this._left = this.isFrom ? _fromLeft : _toLeft;
            this._bottom = this.isFrom ? _fromBottom : _toBottom;
          });
        },
      ),
    );
  }
}
