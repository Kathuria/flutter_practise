import 'package:flutter/material.dart';

//AnimatedCrossFade
//https://www.youtube.com/watch?v=PGK2UUAyE54&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=60&ab_channel=Flutter

class Widget58a extends StatefulWidget {
  @override
  _Widget58aState createState() => _Widget58aState();
}

class _Widget58aState extends State<Widget58a> {
  bool shouldWelcomeUser = true;

  final Hello hello = Hello();
  final Goodbye goodbye = Goodbye();
  final Container lightBlueBox = Container(
    width: 300,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.lightBlue[100],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 58a : Animated CrossFade Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            lightBlueBox,
            const SizedBox(height: 20),
            GestureDetector(
              child: AnimatedCrossFade(
                crossFadeState: shouldWelcomeUser
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 200),
                firstChild: hello,
                secondChild: goodbye,
              ),
              onTap: () => setState(() => shouldWelcomeUser = !shouldWelcomeUser),
            ),
            const SizedBox(height: 20),
            lightBlueBox,
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'HELLO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    );
  }
}

class Goodbye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'GOODBYE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.lightBlue,
      ),
    );
  }
}