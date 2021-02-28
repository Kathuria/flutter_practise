import 'package:flutter/material.dart';
import 'dart:math';

//NotificationListener
//https://www.youtube.com/watch?v=cAnFbFoGM50&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=72&ab_channel=Flutter

class Widget70 extends StatefulWidget {
  @override
  _Widget70State createState() => _Widget70State();
}

class _Widget70State extends State<Widget70> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 70 : Notification Listener'),
      ),
      body: Center(
        child: NotificationListener<ColorNotification>(
          child: ChangeColor(
            bgColor: color,
          ),

          ///Notification is received here whenever
          onNotification: (notification) {
            setState(() {
              color = notification.color;
            });
            return true;
          },
        ),
      ),
    );
  }
}

///Child widget that will initiate a change to bubble up the parent
class ChangeColor extends StatelessWidget {
  final Color bgColor;

  ChangeColor({this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        textColor: Colors.white,
        color: bgColor,
        child: Text("Click to change my color"),
        onPressed: () {
          final randomColor = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
          ColorNotification(color: randomColor)..dispatch(context);
        },
      ),
    );
  }
}

class ColorNotification extends Notification {
  final Color color;

  const ColorNotification({this.color});
}