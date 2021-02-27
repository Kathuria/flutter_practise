import 'package:flutter/material.dart';

//ClipRReact -- R is rounded rectangle
//https://www.youtube.com/watch?v=eI43jkQkrvs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=17&ab_channel=GoogleDevelopers

class Widget16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 16 : ClipRRect'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              clipBehavior: Clip.hardEdge,
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: const Center(
                  child: Text(
                    'Clip.hardEdge',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}