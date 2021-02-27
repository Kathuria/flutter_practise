import 'package:flutter/material.dart';

//FractionallySizedBox
//https://www.youtube.com/watch?v=PEsY654EGZ0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=52&ab_channel=Flutter

class Widget51 extends StatefulWidget {
  @override
  _Widget51State createState() => _Widget51State();
}

class _Widget51State extends State<Widget51> {
  ///Initial Slider widget value
  var _value = 0.50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 51 : Fractionally Sized Box'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: FractionallySizedBox(
              widthFactor: _value,
              heightFactor: 0.5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24.0),
            child: Text("Width factor is : ${_value.abs()}"),
          ),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Text(
                "Covering ${(_value * 100).toStringAsFixed(0)}% of device width"),
          ),

          ///Slider widget to set opacity value
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Slider(
              value: _value,

              ///Color for active side of Slider
              activeColor: Colors.lightBlue,

              ///Color for inactive side of Slider
              inactiveColor: Colors.lightBlue[50],

              ///Minimum value of the slider
              min: 0.0,

              ///Maximum value of the slider
              max: 1.0,

              ///No.Of divisions from min to max value on the Slider
              divisions: 100,

              ///Value indicator above the slider
              label: "${_value.abs()}",
              onChanged: (double value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
          Text('Drag to change width factor'),
        ],
      ),
    );
  }
}
