import 'package:flutter/material.dart';

//ValueListenableBuilder
//https://www.youtube.com/watch?v=s-ZG-jS5QHQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=31&ab_channel=Flutter

class Widget30 extends StatelessWidget {
  final ValueNotifier<String> value = ValueNotifier<String>('Hello!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 30 : Value Listenable Builder'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ValueListenableBuilder(
              valueListenable: value,
              builder: (context, dynamic value, _) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            TextFormField(
              onFieldSubmitted: (string) {
                value.value = 'Hello, $string';
              },
            ),
          ],
        ),
      ),
    );
  }
}
