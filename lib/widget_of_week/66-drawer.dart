import 'package:flutter/material.dart';

//Drawer
//https://www.youtube.com/watch?v=WRj86iHihgY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=68&ab_channel=Flutter

class Widget66 extends StatefulWidget {
  @override
  _Widget66State createState() => _Widget66State();
}

class _Widget66State extends State<Widget66> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('#Widget 66 : Drawer'),
      ),
      drawer: Drawer(child: getDrawerContent(context)),
      endDrawer: Drawer(child: getDrawerContent(context)),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text('Open Drawer (from left)'),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text('Open Drawer (from right)'),
                  onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getDrawerContent(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text("Drawer Header"),
            ),
          ),
        ),
        ListTile(
          title: Text("List item 1"),
        ),
        ListTile(
          title: Text("List item 2"),
        ),
        ListTile(
          title: Text("List item 3"),
        ),
        ListTile(
          title: Text("List item 4"),
        ),
        Center(
          child: FlatButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.blue, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),
            child: Text("Click to dismiss"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        )
      ],
    );
  }
}