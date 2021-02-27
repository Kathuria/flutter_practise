import 'package:flutter/material.dart';

//Flexible
//https://www.youtube.com/watch?v=CI7x0mAZiY0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=34&ab_channel=Flutter

class Widget33 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 33 : Flexible'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            //fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.cyan,
              child: Center(
                child: Text(
                  'FlexFit.loose',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.teal,
              child: Center(
                child: Text(
                  '3 Flex',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.indigo,
              child: Center(
                child: Text(
                  '1 Flex',
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