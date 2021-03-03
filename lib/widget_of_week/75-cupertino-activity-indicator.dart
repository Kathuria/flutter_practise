import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//CupertinoActivityIndicator
//https://www.youtube.com/watch?v=AENVH-ZqKDQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=78&ab_channel=Flutter

class Widget75 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 75 : Cupertino Activity Indicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ///Default indicator
            CupertinoActivityIndicator(),
            Text('Default Indicator'),
            ///Default indicator with no animation
            CupertinoActivityIndicator(
              animating: false,
            ),
            Text('Animating False Indicator'),
            ///Default indicator with increased size
            CupertinoActivityIndicator(
              radius: 30,
            ),
            Text('With Radius 30'),
          ],
        ),
      ),
    );
  }
}