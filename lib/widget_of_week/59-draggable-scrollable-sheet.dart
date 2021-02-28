import 'package:flutter/material.dart';

//draggableScrollableSheet
//https://www.youtube.com/watch?v=Hgw819mL_78&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=61&ab_channel=Flutter

class Widget59 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 59 : Draggable Scrollable Sheet'),
      ),
      body: DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.3,
        maxChildSize: 0.6,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    Image.asset('images/flutter_engage.png'),
                    for (var i = 0; i < 10; i++)
                      Text('Engage',
                          style: Theme.of(context).textTheme.headline4),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
