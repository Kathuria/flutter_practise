import 'package:flutter/material.dart';

//ReOrderableListView
//https://www.youtube.com/watch?v=3fB1mxOsqJE&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=43&ab_channel=Flutter

class Widget42 extends StatefulWidget {
  @override
  _Widget42State createState() => _Widget42State();
}

class _Widget42State extends State<Widget42> {
  final List _items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 42 : Re-orderable List View'),
      ),
      body: ReorderableListView(
        children: <Widget>[
          for (final item in _items)
            Container(
              width: double.infinity,
              height: 100.0,

              /// Unique key for each item so that reorderable list can
              /// identify them
              key: ValueKey(item),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Theme.of(context).dividerColor,
                    width: 0.5,
                  ),
                  bottom: BorderSide(
                    color: Theme.of(context).dividerColor,
                    width: 0.5,
                  ),
                ),
              ),
              child: Center(
                child: ListTile(
                  title: Text("Item $item"),
                  leading: Icon(
                    Icons.drag_handle,
                    color: Colors.grey[400],
                  ),
                ),
              ),
            )
        ],
        header: Padding(
          padding: const EdgeInsets.only(
              top: 16.0, bottom: 24.0, left: 16.0, right: 16.0),
          child: Text(
            "This is an optional header. Long press and drag any item"
            " below to move it",
            textAlign: TextAlign.center,
          ),
        ),
        onReorder: (oldIndex, newIndex) {
          setState(
            () {
              if (newIndex > oldIndex) {
                newIndex -= 1;
              }
              final item = _items.removeAt(oldIndex);
              _items.insert(newIndex, item);
            },
          );
        },
      ),
    );
  }
}
