import 'package:flutter/material.dart';

//ListWheelScrollview
//https://www.youtube.com/watch?v=dUhmWAz4C7Y&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=70&ab_channel=Flutter

class Widget68 extends StatefulWidget {
  @override
  _Widget68State createState() => _Widget68State();
}

class _Widget68State extends State<Widget68> {
  double _diameterRatio = 2;

  double _offAxisFraction = 0;

  double _magnification = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 68 : List Wheel Scroll View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            SizedBox(
              height: 200,
              child: ListWheelScrollView(
                useMagnifier: _magnification > 1,
                magnification: _magnification,
                diameterRatio: _diameterRatio,
                offAxisFraction: _offAxisFraction,
                itemExtent: 50,
                children: <Widget>[
                  for (int i = 0; i < 10; i++) MyItem(index: i + 1)
                ],
              ),
            ),
            Spacer(),
            Text('offAxisFraction'),
            Slider(
              value: _offAxisFraction,
              onChanged: (newValue) =>
                  setState(() => _offAxisFraction = newValue),
              min: -2,
              max: 2,
            ),
            Text('diameterRatio'),
            Slider(
              value: _diameterRatio,
              onChanged: (newValue) =>
                  setState(() => _diameterRatio = newValue),
              min: 0.1,
              max: 10,
            ),
            Text('magnification'),
            Slider(
              value: _magnification,
              onChanged: (newValue) =>
                  setState(() => _magnification = newValue),
              min: 1,
              max: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final int index;

  MyItem({@required this.index, Key key}) : super(key: key);

  static const colors = [
    Colors.pink,
    Colors.indigo,
    Colors.grey,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: colors[index % colors.length],
        child: Center(
            child: Text(
          '$index',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
