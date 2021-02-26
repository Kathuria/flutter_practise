import 'package:flutter/material.dart';

//SizedBox
//https://www.youtube.com/watch?v=EHPu_DzRfqA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=30&ab_channel=Flutter

class Widget29a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 29a : Sized Box - Infinity'),
      ),
      body: Center(
        // expand is equal to setting height and width to infinity
        // width: double.infinity,
        // height: double.infinity,
        child: SizedBox.expand(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Button',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}