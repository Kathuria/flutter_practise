import 'package:flutter/material.dart';

//Inherited-Widget
//https://www.youtube.com/watch?v=1t-8rBCGBYw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=37&ab_channel=Flutter

class Widget36 extends StatefulWidget {
  @override
  _Widget36State createState() => _Widget36State();
}

class _Widget36State extends State<Widget36> {
  MaterialColor color = Colors.lime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 36 : Inherited Widget'),
      ),
      body: ColorInfo(
        color: color,
        child: One(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: () {
          setState(() {
            color = color == Colors.lime ? Colors.blue : Colors.lime;
          });
        },
      ),
    );
  }
}

class ColorInfo extends InheritedWidget {
  const ColorInfo({
    @required this.color,
    @required Widget child,
  }) : super(child: child);

  final Color color;

  @override
  bool updateShouldNotify(ColorInfo oldWidget) => oldWidget.color != color;

  static ColorInfo of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ColorInfo>();
}

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = ColorInfo.of(context).color;

    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: color,
          child: const Center(
            child: Text('1', style: TextStyle(fontSize: 30)),
          ),
        ),
        Two(),
      ],
    );
  }
}

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = ColorInfo.of(context).color;

    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: color,
          child: const Center(
            child: Text('2', style: TextStyle(fontSize: 30)),
          ),
        ),
        Three()
      ],
    );
  }
}

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = ColorInfo.of(context).color;

    return Container(
      width: 100,
      height: 100,
      color: color,
      child: const Center(
        child: Text('3', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}