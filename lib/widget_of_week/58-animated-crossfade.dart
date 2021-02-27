import 'package:flutter/material.dart';

//AnimatedCrossFade
//https://www.youtube.com/watch?v=PGK2UUAyE54&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=60&ab_channel=Flutter

class Widget58 extends StatefulWidget {
  @override
  _Widget58State createState() => _Widget58State();
}

class _Widget58State extends State<Widget58> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 57 : Animated CrossFade'),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstChild:
              const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 200),
          secondChild:
              const FlutterLogo(style: FlutterLogoStyle.stacked, size: 200),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: () => setState(() => _first = !_first),
      ),
    );
  }
}
