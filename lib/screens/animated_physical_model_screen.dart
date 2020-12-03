import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedPhysicalModelScreen extends StatefulWidget {
  @override
  _AnimatedPhysicalModelScreenState createState() =>
      _AnimatedPhysicalModelScreenState();
}

class _AnimatedPhysicalModelScreenState
    extends State<AnimatedPhysicalModelScreen> {
  // Z座標
  static final double fromElevation = 10.0;
  static final double toElevation = 30.0;
  double _elevation = fromElevation;

  // 色
  static final Color fromColor = Colors.orange;
  static final Color toColor = Colors.greenAccent;
  Color _color = fromColor;

  // 影の色
  static final Color fromShadowColor = Colors.red;
  static final Color toShadowColor = Colors.green;
  Color _shadowColor = fromShadowColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPhysicalModel Sample'),
      ),
      body: Center(
          child: AnimatedPhysicalModel(
        elevation: this._elevation,
        shape: BoxShape.rectangle,
        color: this._color,
        shadowColor: this._shadowColor,
        duration: Duration(seconds: 1),
        child: Container(
          width: 200,
          height: 200,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            if (this._elevation >= toElevation) {
              this._elevation = fromElevation;
              this._color = fromColor;
              this._shadowColor = fromShadowColor;
            } else {
              this._elevation = toElevation;
              this._color = toColor;
              this._shadowColor = toShadowColor;
            }
          });
        },
      ),
    );
  }
}
