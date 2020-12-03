import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  @override
  _AnimatedOpacityScreenState createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity Sample'),
      ),
      body: Center(
          child: AnimatedOpacity(
        opacity: this._opacity,
        duration: Duration(seconds: 1),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this._opacity = (this._opacity >= 1.0) ? 0.0 : 1.0;
          });
        },
      ),
    );
  }
}
