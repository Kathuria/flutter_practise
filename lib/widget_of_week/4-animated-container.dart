import 'package:flutter/material.dart';

//AnimatedContainer
//https://www.youtube.com/watch?v=yI-8QHpGIP4&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=5&ab_channel=GoogleDevelopers

class Widget4 extends StatefulWidget {
  @override
  _Widget4State createState() => _Widget4State();
}

class _Widget4State extends State<Widget4> {
  double _borderRadii = 0;
  double _border = 1;
  double _height = 150;
  Color _color = const Color(0xFF00BB00);
  final Duration _myDuration = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 4 : Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: _myDuration,
          child: Container(
            height: _height,
            width: 200,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: _border,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(_borderRadii)),
            color: _color,
          ),
          height: _height,
          width: 200,
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _borderRadii = _borderRadii == 0.0 ? 20.0 : 0.0;    //Animate Border radius
            _border = _border == 1.0 ? 5.0 : 1.0;     //Animate Border Width
            _height = _height == 150.0 ? 200 : 150;   //Animate Height
            if (_color == const Color(0xFF00BB00)) {      // Animate Color
              _color = const Color(0xFF0000FF);
            } else {
              _color = const Color(0xFF00BB00);
            }
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }
}