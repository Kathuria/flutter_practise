import 'package:flutter/material.dart';

//FloatingActionButton
//https://www.youtube.com/watch?v=2uaoEDOgk_I&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=9&ab_channel=GoogleDevelopers

class Widget8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Widgets',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('#Widget 8 : Floating Action Button'),
          ),
          body: const Center(child: Text('Press the button below!')),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.thumb_up),
            backgroundColor: Colors.red,
            onPressed: () {},
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.yellow,
            child: Container(height: 50),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }

  Widget _buildContainer() {
    return Container(
      color: Colors.amber,
      height: 60,
      width: 60,
    );
  }
}
