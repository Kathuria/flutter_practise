import 'package:flutter/material.dart';

//Animated Opacity
//https://www.youtube.com/watch?v=QZAvjqOqiLY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=51&ab_channel=Flutter

class Widget50 extends StatefulWidget {
  @override
  _Widget50State createState() => _Widget50State();
}

class _Widget50State extends State<Widget50> {
  double opacityLevel = 1.0;
  String buttonText = "Fade Out";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 50 : Animated Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 1),
                child: FlutterLogo(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(24),
              child: Text("Opacity Value - ${opacityLevel.toString()}"),
            ),
            Container(
              child: ElevatedButton(
                child: Text(buttonText),
                onPressed: _changeOpacity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
      buttonText = buttonText == "Fade Out" ? "Fade In" : "Fade Out";
    });
  }
}
