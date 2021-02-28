import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
              Tab(text: 'One'),
              Tab(text: 'Two'),
              Tab(text: 'Three'),
              Tab(text: 'Four'),
              Tab(text: 'Five'),
              Tab(text: 'Six'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Icon(
                Icons.looks_one,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.looks_two,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.looks_3,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.looks_4,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.looks_5,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                Icons.looks_6,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
