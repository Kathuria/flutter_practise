import 'package:flutter/material.dart';

//colorFiltered
//https://www.youtube.com/watch?v=F7Cll22Dno8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=62&ab_channel=Flutter

class Widget60 extends StatefulWidget {
  @override
  _Widget60State createState() => _Widget60State();
}

class _Widget60State extends State<Widget60> {
  List<bool> isSelected = <bool>[false, false, true];
  MaterialColor _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 60 : Color Filtered'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                _color,
                BlendMode.modulate,
              ),
              child: Image.asset('images/flutter_engage.png'),
            ),
            ToggleButtons(
              children: const <Widget>[
                Text('Amber'),
                Text('Blue'),
                Text('Green'),
              ],
              onPressed: (index) {
                setState(() {
                  for (var buttonIndex = 0;
                  buttonIndex < isSelected.length;
                  buttonIndex++) {
                    if (buttonIndex == index) {
                      isSelected[buttonIndex] = true;
                    } else {
                      isSelected[buttonIndex] = false;
                    }
                  }

                  if (index == 0) {
                    _color = Colors.amber;
                  } else if (index == 1) {
                    _color = Colors.blue;
                  } else {
                    _color = Colors.green;
                  }
                });
              },
              isSelected: isSelected,
            ),
          ],
        ),
      ),
    );
  }
}