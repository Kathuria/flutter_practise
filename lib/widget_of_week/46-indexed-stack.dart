import 'package:flutter/material.dart';

//IndexedStack
//https://www.youtube.com/watch?v=_O0PPD1Xfbk&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=47&ab_channel=Flutter

class Widget46 extends StatefulWidget {
  @override
  _Widget46State createState() => _Widget46State();
}

class _Widget46State extends State<Widget46> {
  var _widgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 46 : indexed Stack'),
      ),
      body: IndexedStack(
        index: _widgetIndex,
        children: <Widget>[
          WidgetOne(),
          WidgetTwo(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            label: 'One',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            label: 'Two',
          ),
        ],
        currentIndex: _widgetIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _widgetIndex = index;
          });
        },
      ),
    );
  }
}

class WidgetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('images/flutter_engage.png'));
  }
}

class WidgetTwo extends StatefulWidget {
  @override
  _WidgetTwoState createState() => _WidgetTwoState();
}

class _WidgetTwoState extends State<WidgetTwo> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_count',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              child: Text(
                'COUNT',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
