import 'package:flutter/material.dart';

//SliverGridCount
//https://www.youtube.com/watch?v=ORiTTaVY6mM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=13&ab_channel=GoogleDevelopers

class Widget12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _expandedImage = FlutterLogo();
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 12 : Sliver Grid - Count'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 4,
            children: <Widget>[
              Container(color: Colors.red, height: 150),
              Container(color: Colors.green, height: 150),
              Container(color: Colors.yellow, height: 150),
              Container(color: Colors.red, height: 150),
              Container(color: Colors.green, height: 150),
              Container(color: Colors.yellow, height: 150),
              Container(color: Colors.red, height: 150),
              Container(color: Colors.green, height: 150),
              Container(color: Colors.yellow, height: 150),
              Container(color: Colors.red, height: 150),
              Container(color: Colors.green, height: 150),
              Container(color: Colors.yellow, height: 150),
            ],
          )
        ],
      ),
    );
  }
}
