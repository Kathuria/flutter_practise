import 'package:flutter/material.dart';

//Wrap
//https://www.youtube.com/watch?v=z5iw2SeFx2M&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=4&ab_channel=GoogleDevelopers

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('#Widget 3 : Wrap'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            child: Wrap(
              alignment: WrapAlignment.end,
              spacing: 10,
              runSpacing: 20,
              children: [
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
                _buildContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      color: Colors.amber,
      height: 60,
      width: 60,
    );
  }
}

