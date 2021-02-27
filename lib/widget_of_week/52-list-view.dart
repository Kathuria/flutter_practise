import 'package:flutter/material.dart';

//List View
//https://www.youtube.com/watch?v=KJpkjHGiI5A&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=53&ab_channel=Flutter

class Widget52 extends StatelessWidget {
  final List<String> entries = <String>[
    'Item A',
    'Item B',
    'Item C',
    'Item D',
    'Item E',
    'Item F',
    'Item G',
    'Item H',
    'Item I',
    'Item J',
    'Item K',
    'Item L',
    'Item M',
    'Item N',
    'Item O'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 52 : List View'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
        itemCount: entries.length,
        reverse: false,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueGrey,
            child: ListTile(
              leading: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.lime,
                  ),
                ),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.lightGreen,
              ),
              title: Text(
                "Person ${index + 1}",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "${entries[index]}",
                style: TextStyle(color: Colors.yellow),
              ),
              onTap: () => null,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 2,
        ),
      ),
    );
  }
}
