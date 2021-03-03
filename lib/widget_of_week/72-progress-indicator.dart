import 'package:flutter/material.dart';

//CircularProgressIndicator and LinearProgressIndicator
//https://www.youtube.com/watch?v=O-rhXZLtpv0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=75&ab_channel=Flutter

class Widget72 extends StatefulWidget {
  @override
  _Widget72State createState() => _Widget72State();
}

class _Widget72State extends State<Widget72>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Color> _colorTween;
  var counterStream =
  Stream<double>.periodic(Duration(milliseconds: 100), (x) => (x / 100).toDouble()).take(101);

  void initState() {
    _animationController = AnimationController(
      duration: Duration(milliseconds: 1800),
      vsync: this,
    );
    _colorTween = _animationController.drive(ColorTween(begin: Colors.green, end: Colors.red));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 72 : Progress Indicator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ///CircularProgressIndicator with a value
          StreamBuilder(
            stream: counterStream,
            builder: (context, snapshot) {
              print(snapshot.data);
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  value: snapshot.data,
                ),
              );
            },
          ),

          ///CircularProgressIndicator with single color
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),

          ///CircularProgressIndicator with dual color
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircularProgressIndicator(valueColor: _colorTween),
          ),

          ///LinearProgressIndicator with dual color
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: LinearProgressIndicator(valueColor: _colorTween),
          ),
        ],
      ),
    );
  }
}