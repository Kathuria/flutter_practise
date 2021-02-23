import 'package:flutter/material.dart';
import 'package:flutter_practise/widget_of_week/9x-pages.dart';

//PageView
//https://www.youtube.com/watch?v=J1gE9xvph-A&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=10&ab_channel=GoogleDevelopers

class Widget9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
    );
    final pageView = PageView(
      controller: controller,
      scrollDirection: Axis.vertical, // Default Horizontal scroll
      //reverse: true,      //Default false
      //pageSnapping: false,  //Default true
      children: <Widget>[
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
    return MaterialApp(
      title: 'Flutter Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('#Widget 9 : Page View'),
        ),
        body: pageView
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

