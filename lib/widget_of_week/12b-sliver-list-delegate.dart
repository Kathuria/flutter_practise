import 'package:flutter/material.dart';

//SliverListDelegate
//https://www.youtube.com/watch?v=ORiTTaVY6mM&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=13&ab_channel=GoogleDevelopers

class Widget12b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 12b : Sliver List Delegate'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              for (var i = 0; i < 6; i++)
                Container(
                  height: 150,
                  color: i % 2 == 0 ? Colors.white : Colors.grey[300],
                  child: Center(
                    child: Text('$i', style: const TextStyle(fontSize: 50)),
                  ),
                ),
            ]),
            /*delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  height: 150,
                  color: index % 2 == 0 ? Colors.white : Colors.grey[300],
                  child: Center(
                    child: Text('$index', style: const TextStyle(fontSize: 50)),
                  ),
                );
              }),*/
          ),
        ],
      ),
    );
  }
}
