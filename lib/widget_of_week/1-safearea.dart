import 'package:flutter/material.dart';

//SafeArea
//https://www.youtube.com/watch?v=lkF0TQJO0bA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=2&ab_channel=GoogleDevelopers

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('#Widget 1 : SafeArea'),
          ),
          body: SafeArea(
              child: ListView(
                  children:
                      List.generate(100, (i) => Text('This is some text'))))),
    );
  }
}
