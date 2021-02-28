import 'package:flutter/material.dart';

//Snackbar
//https://www.youtube.com/watch?v=zpO6n_oZWw0&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=69&ab_channel=Flutter

class Widget67 extends StatefulWidget {
  @override
  _Widget67State createState() => _Widget67State();
}

class _Widget67State extends State<Widget67> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('#Widget 67 : SnackBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Show simple SnackBar'),
                onPressed: () => _scaffoldKey.currentState.showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    content: Text("Simple SnackBar"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Show elevated SnackBar'),
                onPressed: () => _scaffoldKey.currentState.showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Text("Elevated SnackBar"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text('Show custom layout SnackBar'),
                onPressed: () => _scaffoldKey.currentState.showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Row(
                      children: <Widget>[
                        Icon(Icons.thumb_up),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Text("Hello!"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}