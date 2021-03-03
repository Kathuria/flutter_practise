import 'package:flutter/material.dart';

//AboutDialog
//https://www.youtube.com/watch?v=YFCSODyFxbE&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=83&ab_channel=Flutter

class Widget80 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 80 : About Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('More Info'),
          onPressed: () => showAboutDialog(
            context: context,
            applicationVersion: '1.0.0',
            applicationIcon: const Icon(
              Icons.policy,
              color: Colors.green,
            ),
            applicationLegalese: 'This application is copyrighted to Avi Kathuria',
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('MIT License'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
