import 'package:flutter/material.dart';

//SliverGridExtent
//https://www.youtube.com/watch?v=ORiTTaVY6mM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=13&ab_channel=GoogleDevelopers

class Widget12a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _expandedImage = FlutterLogo();
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 12a : Sliver Grid - Extent'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.extent(
            maxCrossAxisExtent: 90,
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
