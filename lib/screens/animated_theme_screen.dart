import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedThemeScreen extends StatefulWidget {
  @override
  _AnimatedThemeScreenState createState() => _AnimatedThemeScreenState();
}

class _AnimatedThemeScreenState extends State<AnimatedThemeScreen> {
  bool _isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedTheme Sample'),
      ),
      body: Center(
          child: AnimatedTheme(
        duration: Duration(seconds: 1),
        data: this._isLightMode ? ThemeData.light() : ThemeData.dark(),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              this._isLightMode ? 'ライトモード' : 'ダークモード',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this._isLightMode = !this._isLightMode;
          });
        },
      ),
    );
  }
}
