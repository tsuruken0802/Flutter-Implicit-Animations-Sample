import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  @override
  _AnimatedCrossFadeScreenState createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  // 最初に表示するWidget
  Widget _firstWidget() {
    return Container(
      width: 400,
      height: 200,
      color: Colors.red,
    );
  }

  // クロスフェードするWidget
  Widget _secondWidget() {
    return Container(
      width: 200,
      height: 300,
      color: Colors.blue,
    );
  }

  // 最初のWidgetを表示するフラグ
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade Sample'),
      ),
      body: Center(
          child: AnimatedCrossFade(
        duration: Duration(seconds: 1),
        crossFadeState: this.showFirst
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        firstChild: this._firstWidget(),
        secondChild: this._secondWidget(),
        // layoutBuilderでサイズの違うWidgetでも違和感なく表示する
        layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
          return Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: [
              Positioned(
                child: bottomChild,
                key: bottomChildKey,
              ),
              Positioned(
                child: topChild,
                key: topChildKey,
              )
            ],
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            this.showFirst = !this.showFirst;
          });
        },
      ),
    );
  }
}
