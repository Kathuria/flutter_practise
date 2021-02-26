import 'dart:ui';
import 'package:flutter/material.dart';

//BackdropFilter
//https://www.youtube.com/watch?v=dYRs7Q1vfYI&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=25&ab_channel=GoogleDevelopers

class Widget24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 24 : Backdrop Filter'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text('0' * 10000),
          Center(
            child: ClipRect(
              // <-- clips to the 200x200 [Container] below
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  child: const Text('Hello World'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}