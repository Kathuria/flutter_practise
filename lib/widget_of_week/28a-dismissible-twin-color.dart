import 'package:flutter/material.dart';

//Dismissible
//https://www.youtube.com/watch?v=iEMgjrfuc58&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=29&ab_channel=Flutter

class Widget28a extends StatefulWidget {
  @override
  _Widget28aState createState() => _Widget28aState();
}

class _Widget28aState extends State<Widget28a> {
  List<String> items = [
    '1. This is a list item',
    '2. This is also a list item',
    "3. Another Item",
    '4. Last One!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 28 : Dismissible - twin colors'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          return Dismissible(
            child: ListTile(
              title: Text(
                items[i],
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(i);
              });
            },
            background: Container(
              alignment: Alignment.centerLeft,
              color: Colors.green,
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.check),
              ),
            ),
            secondaryBackground: Container(
              alignment: Alignment.centerRight,
              color: Colors.red,
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.cancel),
              ),
            ),
            key: ValueKey(items[i]),
          );
        },
      ),
    );
  }
}
