import 'package:flutter/material.dart';

//AspectRatio
//https://www.youtube.com/watch?v=XcnP3_mO_Ms&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=39&ab_channel=Flutter

class Widget38 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 38 : Aspect Ratio'),
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.5, // Width to height, also works for 3/2
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue,
              ),
              margin: const EdgeInsets.all(25),
              child: Center(
                child: Text(
                  'aspectRatio: 3 / 2 or 1.5',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.lightBlue,
              ),
              margin: const EdgeInsets.all(25),
              child: Center(
                child: Text(
                  'aspectRatio: 16 / 9',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}