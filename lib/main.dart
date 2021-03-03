import 'package:flutter/material.dart';

/*For Basic Practise*/
import 'package:flutter_practise/hello-world.dart';
import 'package:flutter_practise/counter.dart';
import 'package:flutter_practise/list-basic.dart';
import 'package:flutter_practise/list-advanced.dart';

/*Widget Of Week*/
import 'package:flutter_practise/widget_of_week/main.dart';

/*Rocket_guide App*/
import 'package:flutter_practise/rocket_guide/app/app.dart';
import 'package:flutter_practise/rocket_guide/backend/backend.dart';

void main() {
  runApp(Display());
}

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final backend = Backend('https://api.spacexdata.com/v4');
    return MaterialApp(
      title: 'Flutter Practise',
      initialRoute: '/',
      routes: {
        '/rocket': (context) => RocketGuideApp(
              backend: backend,
            ),
        '/hello': (context) => HelloFlutter(),
        '/counter': (context) => Counter(),
        '/list-basic': (context) => ListBasic(),
        '/list-advanced': (context) => ListAdvanced(),
        '/widgetOfWeek': (context) => WidgetOfWeek(),
        '/': (context) => MyPractiseApp(),
      },
    );
  }
}

class MyPractiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          _buildList(context, 'Hello To Flutter', '/hello'),
          _buildList(context, 'Inc. Counter', '/counter'),
          _buildList(context, 'Lazy list', '/list-basic'),
          _buildList(context, 'Lazy Advanced List', '/list-advanced'),
          _buildList(context, 'Widgets Of the Week', '/widgetOfWeek'),
          _buildList(context, 'SpaceX Rockets', '/rocket'),
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context, String title, String routeName) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        trailing: Icon(Icons.next_plan),
      ),
    );
  }
}
