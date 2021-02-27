import 'package:flutter/material.dart';

//Spacer
//https://www.youtube.com/watch?v=A3WrA4zAaPw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=35&ab_channel=Flutter

class Widget35 extends StatefulWidget {
  @override
  _Widget35State createState() => _Widget35State();
}

class _Widget35State extends State<Widget35> {
  bool isSpacerEnabled = true;

  MaterialColor fabColor = Colors.red;

  String fabText = "Remove Spacer";

  IconData fabIcon = Icons.cancel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 35 : Spacer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Text(
                "Empty spaces between the boxes below are Spacer widgets",
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /// Empty space with flex = 2
                isSpacerEnabled
                    ? Spacer(
                        flex: 2,
                      )
                    : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),

                /// Empty space with default flex = 1
                isSpacerEnabled ? Spacer() : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),

                /// Empty space with default flex = 1
                isSpacerEnabled ? Spacer() : Container(),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),

                /// Empty space with default flex = 2
                isSpacerEnabled
                    ? Spacer(
                        flex: 2,
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: fabColor,
        onPressed: () => setState(() {
          isSpacerEnabled == true
              ? isSpacerEnabled = false
              : isSpacerEnabled = true;
          isSpacerEnabled ? fabColor = Colors.red : fabColor = Colors.green;
          isSpacerEnabled ? fabIcon = Icons.cancel : fabIcon = Icons.add_circle;
          isSpacerEnabled ? fabText = "Remove Spacer" : fabText = "Add Spacer";
        }),
        icon: Icon(
          fabIcon,
          color: Colors.white,
        ),
        label: Text(
          fabText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
