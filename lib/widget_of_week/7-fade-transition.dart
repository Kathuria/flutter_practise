import 'package:flutter/material.dart';

//FadeTransition
//https://www.youtube.com/watch?v=rLwWVbv3xDQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=8&ab_channel=GoogleDevelopers

class Widget7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MyFadeIn(
      child: Center(
        child: FlutterLogo(
          size: 300,
        ),
      ),
    );
  }
}

class MyFadeIn extends StatefulWidget {
  const MyFadeIn({@required this.child});

  final Widget child;

  @override
  _MyFadeInState createState() => _MyFadeInState();
}

class _MyFadeInState extends State<MyFadeIn>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return MaterialApp(
        title: 'Flutter Widgets',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('#Widget 7 : Fade Transition'),
          ),
          body: FadeTransition(
            opacity: _animation,
            child: widget.child,
          ),
        ));
  }
}
