import 'package:flutter/material.dart';

//Tooltip
//https://www.youtube.com/watch?v=EeEfD5fI-5Q&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=20&ab_channel=GoogleDevelopers

class Widget19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 19 : Tooltip'),
      ),
      body: Center(
        child: Tooltip(
          message: 'Flutter Engage',
          verticalOffset: 150,
          height: 24,
          child: Container(
            child: Image.asset('images/flutter_engage.png')
          ),
        ),
      ),
    );
  }
}
