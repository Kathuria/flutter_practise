import 'package:flutter/material.dart';

//Media Query
//https://www.youtube.com/watch?v=A3WrA4zAaPw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=35&ab_channel=Flutter

class Widget34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('#Widget 34 : Media Query'),
        ),
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? singleColumnLayout(context)
            : doubleColumnLayout(context));
  }
}

Widget singleColumnLayout(BuildContext context) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My device info - ",
              style: TextStyle(
                  fontSize: 24.0,
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Height: ${MediaQuery.of(context).size.height}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Width: ${MediaQuery.of(context).size.width}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Orientation: ${MediaQuery.of(context).orientation}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Brightness: ${MediaQuery.of(context).platformBrightness}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("System Padding: ${MediaQuery.of(context).padding}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}"),
          ),
        ],
      ),
    );

Widget doubleColumnLayout(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "My device info - ",
              style: TextStyle(
                  fontSize: 24.0,
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Height: ${MediaQuery.of(context).size.height}",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Width: ${MediaQuery.of(context).size.width}",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Orientation: ${MediaQuery.of(context).orientation}",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Brightness: ${MediaQuery.of(context).platformBrightness}",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "System Padding: ${MediaQuery.of(context).padding}",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}",
              ),
            ),
          ],
        )
      ],
    );
