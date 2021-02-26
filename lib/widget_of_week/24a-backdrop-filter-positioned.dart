import 'dart:ui';
import 'package:flutter/material.dart';

//BackdropFilter
//https://www.youtube.com/watch?v=dYRs7Q1vfYI&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=25&ab_channel=GoogleDevelopers

class Widget24a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 24a : Backdrop Filter Positioned'),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset('images/flutter_engage.png'),
          Positioned(
            top: 140,
            bottom: 110,
            left: 170,
            right: 250,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}