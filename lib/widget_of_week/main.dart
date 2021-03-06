import 'package:flutter/material.dart';
import 'package:flutter_practise/widget_of_week/constants.dart';
import 'package:flutter_practise/widget_of_week/routes.dart';

class WidgetOfWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      initialRoute: Constants.Initial_Route,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: getRoutes(),
    );
  }
}

class MyWidgetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets of Week'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            for (var i = 0; i < Constants.WIDGETS.length; i++)
              _buildList(context, Constants.WIDGETS[i], Constants.WIDGET_ROUTES[i]),
          ],
        ),
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
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
