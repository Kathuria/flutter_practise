import 'package:flutter/material.dart';
import 'dart:math';

//Transform
//https://www.youtube.com/watch?v=9z_YNlRlWfA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=24&pbjreload=101&ab_channel=GoogleDevelopers

class Widget23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 23 : Transform'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.menu, size: 50),
            Transform.rotate(
              angle: pi / 4,
              child: Icon(Icons.menu, size: 50),
            ),
            Transform.scale(
              scale: 1.5,
              child: Icon(Icons.menu, size: 50),
            ),
            Transform.translate(
              offset: const Offset(20, 20),
              child: Icon(Icons.menu, size: 50),
            ),
            Transform(
              transform: Matrix4.skewX(0.3),
              child: Icon(Icons.menu, size: 50),
            ),
            Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.01)
                ..rotateX(0.6),
              alignment: FractionalOffset.center,
              child: Icon(Icons.menu, size: 50),
            ),
            Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.3)..rotateZ(-pi / 12.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color(0xFFE8581C),
                child: const Text('Apartment for rent!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
