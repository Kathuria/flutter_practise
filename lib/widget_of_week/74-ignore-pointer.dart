import 'package:flutter/material.dart';
import 'dart:math';

//IgnorePointer
//https://www.youtube.com/watch?v=qV9pqHWxYgI&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=77&ab_channel=Flutter

class Widget74 extends StatefulWidget {
  @override
  _Widget74State createState() => _Widget74State();
}

class _Widget74State extends State<Widget74> {
  Color bgColor = Colors.blue;
  String message = "Click me to change my color";
  bool ignore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 74 : Ignore Pointer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: IgnorePointer(
              ignoring: ignore,
              child: GestureDetector(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: bgColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text(
                        message,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    bgColor =
                        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                            .withOpacity(1);
                  });
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(
            () {
              ignore ? ignore = false : ignore = true;
              ignore
                  ? message = "You cannot click me to change my color"
                  : message = "Click me to change my color";
            },
          );
        },
        label: ignore ? Text("Enable click") : Text("Disable click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
