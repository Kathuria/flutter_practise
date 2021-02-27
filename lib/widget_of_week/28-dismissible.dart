import 'package:flutter/material.dart';

//Dismissible
//https://www.youtube.com/watch?v=iEMgjrfuc58&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=29&ab_channel=Flutter

class Widget28 extends StatefulWidget {
  @override
  _Widget28State createState() => _Widget28State();
}

class _Widget28State extends State<Widget28> {
  final items = List<String>.generate(30, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('#Widget 28 : Dismissible')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            // Each Dismissible must contain a Key. Keys allow Flutter to
            // uniquely identify Widgets.
            key: Key(item),
            // We also need to provide a function that tells our app
            // what to do after an item has been swiped away.
            onDismissed: (direction) {
              // Remove the item from our data source.
              setState(() {
                items.removeAt(index);
              });

              // Then show a snackbar!
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
            // Show a green background as the item is swiped from left to right
            background: Container(
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.centerLeft,
              color: Colors.green,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "Positive Action",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            // Show a red background as the item is swiped from right to left
            secondaryBackground: Container(
              padding: EdgeInsets.only(right: 12),
              alignment: Alignment.centerRight,
              color: Colors.red,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "Negative Action",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            child: ListTile(
              leading: Icon(Icons.swap_horiz),
              title: Text('$item'),
            ),
          );
        },
      ),
    );
  }
}
