import 'package:flutter/material.dart';

//LayoutBuilder
//https://www.youtube.com/watch?v=IYDVcriKjsw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=22&ab_channel=GoogleDevelopers

class Widget21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 21 : Layout builder'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return MyOneColumnLayout();
          } else {
            return MyTwoColumnLayout();
          }
        },
      ),
    );
  }
}

class MyOneColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          width: 200,
          height: 200,
        )
      ],
    );
  }
}

class MyTwoColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            )
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              width: 200,
              height: 200,
            )
          ],
        ),
      ],
    );
  }
}