import 'package:flutter/material.dart';

//TweenActionBuilder
//https://www.youtube.com/watch?v=l9uHB8VXZOg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=65&ab_channel=Flutter

class Widget63 extends StatefulWidget {
  @override
  _Widget63State createState() => _Widget63State();
}

class _Widget63State extends State<Widget63> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('#Widget 63 : Tween Animation Builder'),
      ),
      body: Center(
        child: TweenAnimationBuilder<Color>(
          duration: const Duration(seconds: 3),

          ///Values for the Animation
          ///Type of tween (here: Color) should match the second parameter
          ///of the builder and the Class type parameter(if specified)
          tween: ColorTween(begin: Colors.yellow, end: Colors.purple),

          /// Added child here as a performance optimization. Just so that
          /// flutter does not build the entire widget tree during the animation
          child: Image.asset('images/flutter_engage.png'),
          builder: (BuildContext _, Color value, Widget child) {
            return ColorFiltered(
              child: child,
              colorFilter: ColorFilter.mode(value, BlendMode.modulate),
            );
          },
          onEnd: () => _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text("Done with the Animation"),
              duration: Duration(milliseconds: 3000),
            ),
          ),
        ),
      ),
    );
  }
}
