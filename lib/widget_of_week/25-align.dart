import 'package:flutter/material.dart';

//Align
//https://www.youtube.com/watch?v=g2E7yl3MwMk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=26&ab_channel=GoogleDevelopers

class Widget25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 25 : Align'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(-0.75, -0.75),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(0, 0),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(1, 0.50),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(0.60, -0.80),
                child: Text('Hello!'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 100,
              height: 100,
              child: const Align(
                alignment: Alignment(-0.40, 0.90),
                child: Text('Hello!'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}