import 'package:flutter/material.dart';
import 'dart:math';

//LimitedBox
//https://www.youtube.com/watch?v=uVki2CIzBTs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=40&ab_channel=Flutter

class Widget39 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 39 : Limited Box'),
      ),
      body: ListView(
        children: [
          Text('Without Limited Box, below list view will be blank as size not defined'),
          for (var i = 0; i < 10; i++)
            LimitedBox(
              maxHeight: 200,
              child: Container(
                color: randomColor(),
              ),
            ),
        ],
      ),
    );
  }

  Color randomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(1);
  }
}