import 'package:flutter/material.dart';

//ClipRReact -- R is rounded rectangle
//https://www.youtube.com/watch?v=eI43jkQkrvs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=17&ab_channel=GoogleDevelopers

class Widget16a extends StatefulWidget {
  @override
  _Widget16aState createState() => _Widget16aState();
}

class _Widget16aState extends State<Widget16a> {
  var _value = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 16a : ClipRRect Interactive'),
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(12),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      child: Container(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(_value),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        child: FlutterLogo(
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Slide the slider widget to change the value of radius\n'
                      'to observe changes on borders of the widget below',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Slider(
                  value: _value,
                  activeColor: Colors.lightBlue,
                  inactiveColor: Colors.lightBlue[50],
                  min: 0.0,
                  max: 100.0,
                  divisions: 100,
                  label: '${_value.round()}',
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              const Text('Drag to change value of Radius'),
            ],
          ),
        ),
      ]),
    );
  }
}
