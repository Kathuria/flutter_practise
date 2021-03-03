import 'package:flutter/material.dart';

//Divider
//https://www.youtube.com/watch?v=_liUC641Nmk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=76&ab_channel=Flutter

class Widget73 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 73 : Divider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.orange,
            height: 100.0,
            width: 100.0,
          ),
          Divider(
            height: 50,
            thickness: 5,
            color: Colors.blue,
            indent: 30,
            endIndent: 30,
          ),
          Container(
            color: Colors.purple,
            height: 100.0,
            width: 100.0,
          )
        ],
      ),
    );
  }
}