import 'package:flutter/material.dart';
import 'dart:math';

//ClipOval
//https://www.youtube.com/watch?v=vzWWDO6whIM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=79&ab_channel=Flutter

class Widget76a extends StatefulWidget {
  @override
  _Widget76aState createState() => _Widget76aState();
}

class _Widget76aState extends State<Widget76a> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 76a : Clip Oval Animated'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TweenAnimationBuilder(
              ///Rest the tween range on number change
              tween: number.isEven
                  ? Tween<double>(begin: 0.5, end: 1.0)
                  : Tween<double>(begin: 1.0, end: 0.5),
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeOutCubic,
              builder: (context, tweenValue, child) {
                ///This will clip the chile i.e. the Yellow container
                return ClipOval(
                  clipBehavior: Clip.antiAlias,

                  ///Custom clipper here in which we pass the tweenvalue
                  ///to behave as a radius and thus help modify the size of the
                  ///Rect in the clipper.
                  clipper: MyCircleClipper(tweenValue),
                  child: Transform.scale(
                    scale: 2 - tweenValue,

                    ///A simple way to rotate a widget
                    child: Transform.rotate(
                      child: child,
                      angle: tweenValue + number / 2,
                    ),
                  ),
                );
              },
              child: Container(
                height: 200.0,
                width: 200.0,
                color: Colors.yellow,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 50,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              onEnd: () {
                ///Update the number on every animation end
                setState(() {
                  number++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyCircleClipper extends CustomClipper<Rect> {
  final double radius;

  MyCircleClipper(this.radius);

  @override
  Rect getClip(Size size) {
    ///Here size is the size of the widget over which this ClipOval is wrapped
    ///So here, height and width are 200.0
    var smaller = min(size.width, size.height);
    return Rect.fromCenter(
      center: size.center(Offset.zero),
      width: smaller * radius,
      height: smaller * radius,
    );
  }

  @override
  bool shouldReclip(MyCircleClipper oldClipper) {
    return radius != oldClipper.radius;
  }
}
