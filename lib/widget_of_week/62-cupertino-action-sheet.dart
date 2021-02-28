import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//CupertinoActionSheet
//https://www.youtube.com/watch?v=U-ao8p4A82k&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=64&ab_channel=Flutter

class Widget62 extends StatefulWidget {
  @override
  _Widget62State createState() => _Widget62State();
}

class _Widget62State extends State<Widget62> {
  String thing = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 62 : Cupertino Action Sheet $thing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello',
              style: TextStyle(fontSize: 70),
            ),
            TextButton(
                child: Text(
                  'Click me!',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                onPressed: () async {
                  final response = await showCupertinoModalPopup<String>(
                    context: context,
                    builder: (context) => MyActionSheet(context: context),
                  );
                  setState(() {
                    thing = response;
                  });
                })
          ],
        ),
      ),
    );
  }
}

class MyActionSheet extends StatelessWidget {
  const MyActionSheet({this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: const Text('Thing'),
      message: const Text('A short list of things to do'),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: const Text('Good Thing'),
          onPressed: () => Navigator.of(context).pop('good'),
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          child: const Text('Bad Thing'),
          onPressed: () => Navigator.of(context).pop('bad'),
          isDestructiveAction: true,
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: const Text('Cancel'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
