import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  @override
  _AnimatedSwitcherScreenState createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSize Sample'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(child: child, scale: animation);
                },
                child: Text(
                  '$_count',
                  key: ValueKey<int>(_count),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              ElevatedButton(
                child: const Text('Increment'),
                onPressed: () {
                  setState(() {
                    this._count += 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
