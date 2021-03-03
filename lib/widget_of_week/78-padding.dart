import 'package:flutter/material.dart';

//Padding
//https://www.youtube.com/watch?v=oD5RtLhhubg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=81&ab_channel=Flutter

class Widget78 extends StatefulWidget {
  @override
  _Widget78State createState() => _Widget78State();
}

class _Widget78State extends State<Widget78>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  bool isPadding = false;

  @override
  void initState() {
    ///Here lowerBound and upperBound is the value of padding
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 48,
      duration: Duration(seconds: 2),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 78 : Padding'),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget child) {
          return Column(
            children: <Widget>[
              FlexContainer(color: Colors.yellow, padding: _controller.value),
              Flexible(
                child: Row(
                  children: <Widget>[
                    FlexContainer(
                        color: Colors.green, padding: _controller.value),
                    FlexContainer(
                        color: Colors.blue, padding: _controller.value),
                    FlexContainer(
                        color: Colors.green, padding: _controller.value),
                  ],
                ),
              ),
              FlexContainer(color: Colors.red, padding: _controller.value),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {
          _controller.value == 0
              ? _controller.forward()
              : _controller.reverse();
          setState(() {
            isPadding ? isPadding = false : isPadding = true;
          });
        },
        label: isPadding ? Text("Remove padding") : Text("Add padding"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class FlexContainer extends StatelessWidget {
  final color;
  final double padding;

  const FlexContainer({Key key, this.color, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
