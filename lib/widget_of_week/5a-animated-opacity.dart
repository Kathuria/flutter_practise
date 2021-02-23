import 'package:flutter/material.dart';

//AnimatedOpacity
//https://www.youtube.com/watch?v=9hltevOHQBw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=6&ab_channel=GoogleDevelopers

class Widget5a extends StatefulWidget {
  @override
  _Widget5aState createState() => _Widget5aState();
}

class _Widget5aState extends State<Widget5a> {
  var _opacity = 0.8;

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Widgets',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('#Widget 6 : Animated Opacity'),
          ),
          body: Center(
            child: Stack(
              children: [
                const FlutterLogo(
                  size: 300,
                ),
                AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: _opacity,
                  child: _buildGradientContainer(),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _opacity = _opacity == 0 ? 0.8 : 0;
              });
            },
            child: Icon(Icons.sync),
          ),
        ));
  }

  Widget _buildGradientContainer() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.indigo[900],
            Colors.indigo[600],
            Colors.indigo[300],
            Colors.indigo[100],
          ],
        ),
      ),
    );
  }
}
