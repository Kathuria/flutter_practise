import 'package:flutter/material.dart';

//DefaultTabController&Tabbar
//https://www.youtube.com/watch?v=POtoEH-5l40&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=67&ab_channel=Flutter

class Widget65 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('#Widget 65 : Tab Controller and Tab Bar'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: "Tab 1", icon: Icon(Icons.looks_one)),
              Tab(text: "Tab 2", icon: Icon(Icons.looks_two)),
              Tab(text: "Tab 3", icon: Icon(Icons.looks_3)),
              Tab(text: "Tab 4", icon: Icon(Icons.looks_4)),
              Tab(text: "Tab 5", icon: Icon(Icons.looks_5)),
              Tab(text: "Tab 6", icon: Icon(Icons.looks_6)),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Icon(
                Icons.filter_1,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.filter_2,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.filter_3,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.filter_4,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.filter_5,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.filter_6,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
