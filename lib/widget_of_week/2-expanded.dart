import 'package:flutter/material.dart';

//Expanded
//https://www.youtube.com/watch?v=_rnZaagadyo&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=3&ab_channel=GoogleDevelopers

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('#Widget 2 : Expanded'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  width: 100,
                ),
              ),
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
