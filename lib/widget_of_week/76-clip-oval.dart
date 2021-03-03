import 'package:flutter/material.dart';

//ClipOval
//https://www.youtube.com/watch?v=vzWWDO6whIM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=79&ab_channel=Flutter

class Widget76 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 76 : Clip Oval'),
      ),
      body: Center(
        child: ClipOval(
          clipper: MyClipper(),
          child: Image.asset('images/flutter_engage.png'),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 30, 400, 200);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
