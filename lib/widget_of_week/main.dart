import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_practise/widget_of_week/1-safearea.dart';
import 'package:flutter_practise/widget_of_week/2-expanded.dart';
import 'package:flutter_practise/widget_of_week/3-wrap.dart';
import 'package:flutter_practise/widget_of_week/4-animated-container.dart';
import 'package:flutter_practise/widget_of_week/5-opacity.dart';
import 'package:flutter_practise/widget_of_week/5a-animated-opacity.dart';
import 'package:flutter_practise/widget_of_week/6-future-builder.dart';
import 'package:flutter_practise/widget_of_week/7-fade-transition.dart';
import 'package:flutter_practise/widget_of_week/8-floating-action-button.dart';
import 'package:flutter_practise/widget_of_week/9-page-view.dart';
import 'package:flutter_practise/widget_of_week/10-table.dart';
import 'package:flutter_practise/widget_of_week/11-sliver-app-bar.dart';
import 'package:flutter_practise/widget_of_week/12-sliver-grid-count.dart';
import 'package:flutter_practise/widget_of_week/12a-sliver-grid-extent.dart';
import 'package:flutter_practise/widget_of_week/12b-sliver-list-delegate.dart';
import 'package:flutter_practise/widget_of_week/13-fade-in-image.dart';

class WidgetOfWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      initialRoute: '/',
      routes: {
        '/': (context) => MyWidgetsPage(),
        '/safe-area': (context) => Widget1(),
        '/expanded': (context) => Widget2(),
        '/wrap': (context) => Widget3(),
        '/animated-container': (context) => Widget4(),
        '/opacity': (context) => Widget5(),
        '/animated-opacity': (context) => Widget5a(),
        '/future-builder': (context) => Widget6(),
        '/fade-transition': (context) => Widget7(),
        '/floating-action-button': (context) => Widget8(),
        '/page-view': (context) => Widget9(),
        '/table': (context) => Widget10(),
        '/sliver-app-bar': (context) => Widget11(),
        '/sliver-grid-count': (context) => Widget12(),
        '/sliver-grid-extent': (context) => Widget12a(),
        '/sliver-list-delegate': (context) => Widget12b(),
        '/fade-in-image': (context) => Widget13(),
      },
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
            _buildList(context, 'safe-area', '/safe-area'),
            _buildList(context, 'expanded', '/expanded'),
            _buildList(context, 'wrap', '/wrap'),
            _buildList(context, 'animated-container', '/animated-container'),
            _buildList(context, 'opacity', '/opacity'),
            _buildList(context, 'animated-opacity', '/animated-opacity'),
            _buildList(context, 'future-builder', '/future-builder'),
            _buildList(context, 'fade-transition', '/fade-transition'),
            _buildList(context, 'floating-action-button', '/floating-action-button'),
            _buildList(context, 'page-view', '/page-view'),
            _buildList(context, 'table', '/table'),
            _buildList(context, 'sliver-app-bar', '/sliver-app-bar'),
            _buildList(context, 'sliver-grid-count', '/sliver-grid-count'),
            _buildList(context, 'sliver-grid-extent', '/sliver-grid-extent'),
            _buildList(context, 'sliver-list-delegate', '/sliver-list-delegate'),
            _buildList(context, 'fade-in-image', '/fade-in-image'),
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
