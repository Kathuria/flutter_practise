import 'package:flutter/material.dart';

//AnimatedPosition
//https://www.youtube.com/watch?v=hC3s2YdtWt8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=45&ab_channel=Flutter

class Widget44 extends StatefulWidget {
  final String message = 'HOWDY';

  @override
  _Widget44State createState() => _Widget44State();
}

class _Widget44State extends State<Widget44> {
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 44 : Animated Position'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              MessageWidget(widget.message),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                bottom: showMessage ? 175 : 125,
                top: showMessage ? 10 : 100,
                child: BlockerWidget(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showMessage = !showMessage;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  const MessageWidget(this.message);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.yellow,
      ),
      width: 300,
      height: 300,
      child: Center(
        child: Text(
          message,
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}

class BlockerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.red,
      ),
      width: 150,
      height: 75,
    );
  }
}
