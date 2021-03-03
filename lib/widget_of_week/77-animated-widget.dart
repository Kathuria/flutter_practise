import 'package:flutter/material.dart';

//AnimatedWidget
//https://www.youtube.com/watch?v=LKKgYpC-EPQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=80&ab_channel=Flutter

class Widget77 extends StatefulWidget {
  @override
  _Widget77State createState() => _Widget77State();
}

class _Widget77State extends State<Widget77>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
      lowerBound: 1,
      upperBound: 12,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 77 : Animated Widget'),
      ),
      body: Center(
        child: ButtonTransition(width: _controller),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ButtonTransition extends AnimatedWidget {
  const ButtonTransition({width}) : super(listenable: width);

  Animation<double> get _width => listenable;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Hello'),
      child: const Text('Click Me!'),
      borderSide: BorderSide(width: _width.value),
    );
  }
}
