import 'package:flutter/material.dart';

//FittedBox
//https://www.youtube.com/watch?v=T4Uehk3_wlY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=21&ab_channel=GoogleDevelopers

class Widget20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 20 : Fitted Box'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(children: [
              MyRect(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ),
              ),
              Text('BoxFit.contain'),
              Spacer(flex: 1),
              MyRect(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: FlutterLogo(),
                ),
              ),
              Text('BoxFit.fitWidth'),
              Spacer(flex: 1),
              MyRect(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: FlutterLogo(),
                ),
              ),
              Text('BoxFit.fill'),
              MyRect(
                child: FittedBox(
                  fit: BoxFit.none,
                  child: FlutterLogo(),
                ),
              ),
              Text('BoxFit.none'),
            ]),
            Column(children: [
              MyRect(
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ),
              ),
              Text('Alignment.centerLeft'),
              Spacer(flex: 1),
              MyRect(
                child: FittedBox(
                  alignment: Alignment.centerRight,
                  fit: BoxFit.contain,
                  child: FlutterLogo(),
                ),
              ),
              Text('Alignment.centerRight'),
              Spacer(flex: 1),
              MyRect(
                child: Text('Text'),
              ),
              Spacer(flex: 1),
              MyRect(
                child: FittedBox(
                  child: Text('Text in FittedBox'),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class MyRect extends StatelessWidget {
  const MyRect({@required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      width: 200,
      height: 100,
      child: child,
    );
  }
}
