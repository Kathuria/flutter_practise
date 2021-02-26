import 'package:flutter/material.dart';

//AbsorbPointer
//https://www.youtube.com/watch?v=65HoWqBboI8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=23&ab_channel=GoogleDevelopers

class Widget22 extends StatefulWidget {
  @override
  _Widget22State createState() => _Widget22State();
}

class _Widget22State extends State<Widget22> {
  bool _isAbsorbing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 22 : Absorb Pointer'),
      ),
      body: AbsorbPointer(
        absorbing: _isAbsorbing,
        child: ABunchOfWidgets(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isAbsorbing = !_isAbsorbing;
          });
        },
        backgroundColor: _isAbsorbing ? Colors.red : Colors.blue,
        child: Tooltip(
          message: 'Absorbing State : ${_isAbsorbing.toString()}',
          verticalOffset: -50,
          height: 24,
          child: Icon(Icons.sync),
        ),
      ),
    );
  }
}

class ABunchOfWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            onTap: () {},
            title: const Text('One-line ListTile'),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(),
            title: const Text('One-line with leading widget'),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            title: const Text('One-line with trailing widget'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(),
            title: const Text('One-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            title: const Text('One-line dense ListTile'),
            dense: true,
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(size: 56),
            title: const Text('Two-line ListTile'),
            subtitle: const Text('Here is a second line'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            onTap: () {},
            leading: const FlutterLogo(size: 72),
            title: const Text('Three-line ListTile'),
            subtitle: const Text(
                'A sufficiently long subtitle warrants three lines.'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ],
    );
  }
}
