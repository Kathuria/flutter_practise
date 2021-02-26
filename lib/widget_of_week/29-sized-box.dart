import 'package:flutter/material.dart';

//SizedBox
//https://www.youtube.com/watch?v=EHPu_DzRfqA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=30&ab_channel=Flutter

class Widget29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 29 : Sized Box'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 100,
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
