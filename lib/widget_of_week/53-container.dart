import 'package:flutter/material.dart';

//Container
//https://www.youtube.com/watch?v=c1xLMaTUWCY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=55&ab_channel=Flutter

class Widget53 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 53 : Container'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              /// Simple Container
              Container(
                margin: EdgeInsets.all(24.0),
                color: Colors.blue,
                child: Text(
                  'Container',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),

              /// Container with Padding
              Container(
                padding: EdgeInsets.all(24.0),
                margin: EdgeInsets.all(24.0),
                color: Colors.blue,
                child: Text(
                  'Container with padding',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),

              /// Container with a Shape and border
              Container(
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.amber[200],
                  border: Border.all(color: Colors.blue, width: 3.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Text(
                  'Container with shape',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),

              /// Container with a different shape
              Container(
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber[200],
                ),
                child: Text(
                  'Container with shape',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),

              /// Container with fixed size
              Container(
                margin: EdgeInsets.all(24.0),
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.amber[200],
                ),
                child: Text(
                  'Container with size',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),

              /// Container with fixed size, rotated a bit
              Container(
                margin: EdgeInsets.all(24.0),
                height: 100,
                width: 100,
                transform: Matrix4.rotationZ(0.15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.amber[200],
                ),
                child: Text(
                  'Container with size rotated',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
