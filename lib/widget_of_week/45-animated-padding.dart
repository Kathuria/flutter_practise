import 'package:flutter/material.dart';

//AnimatedPadding
//https://www.youtube.com/watch?v=PY2m0fhGNz4&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=46&ab_channel=Flutter

class Widget45 extends StatefulWidget {
  @override
  _Widget45State createState() => _Widget45State();
}

class _Widget45State extends State<Widget45> {
  double padValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 45 : Animated Padding'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: Duration(seconds: 1),
              child: Container(height: 150, width: 150, color: Colors.blue),
            ),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: Duration(seconds: 1),
              child: Container(height: 150, width: 150, color: Colors.red),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: () => setState(() {
          padValue == 0 ? padValue = 10 : padValue = 0;
        }),
        label: Text(
          padValue == 0 ? "Add Padding" : "Remove Padding",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}