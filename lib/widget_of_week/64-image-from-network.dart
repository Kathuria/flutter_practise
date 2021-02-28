import 'package:flutter/material.dart';

//Image
//https://www.youtube.com/watch?v=7oIAs-0G4mw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=66&ab_channel=Flutter

class Widget64 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 64 : Image from network'),
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/250?image=9',
          loadingBuilder: (context, child, progress) {
            return progress == null
                ? child
                : LinearProgressIndicator(
                value: progress.cumulativeBytesLoaded /
                    progress.expectedTotalBytes);
          },
          semanticLabel: 'Network Picture',
        ),
      ),
    );
  }
}