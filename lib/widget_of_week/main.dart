import 'package:flutter/material.dart';
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
import 'package:flutter_practise/widget_of_week/14-stream-builder-websocket.dart';
import 'package:flutter_practise/widget_of_week/14a-stream-builder-http-resp.dart';
import 'package:flutter_practise/widget_of_week/15-inherited-model.dart';
import 'package:flutter_practise/widget_of_week/16-clip-r-rect.dart';
import 'package:flutter_practise/widget_of_week/17-hero.dart';
import 'package:flutter_practise/widget_of_week/18-custom-paint.dart';
import 'package:flutter_practise/widget_of_week/19-tooltip.dart';
import 'package:flutter_practise/widget_of_week/20-fitted-box.dart';
import 'package:flutter_practise/widget_of_week/21-layout-builder.dart';
import 'package:flutter_practise/widget_of_week/22-absorb-pointer.dart';
import 'package:flutter_practise/widget_of_week/23-transform.dart';
import 'package:flutter_practise/widget_of_week/24-backdrop-filter.dart';
import 'package:flutter_practise/widget_of_week/24a-backdrop-filter-positioned.dart';
import 'package:flutter_practise/widget_of_week/25-align.dart';
import 'package:flutter_practise/widget_of_week/26-positioned.dart';
import 'package:flutter_practise/widget_of_week/27-animated-builder.dart';
import 'package:flutter_practise/widget_of_week/28-dismissible.dart';
import 'package:flutter_practise/widget_of_week/28a-dismissible-twin-color.dart';
import 'package:flutter_practise/widget_of_week/29-sized-box.dart';
import 'package:flutter_practise/widget_of_week/29a-sized-box-infinity.dart';
import 'package:flutter_practise/widget_of_week/29b-sized-box-empty.dart';
import 'package:flutter_practise/widget_of_week/30-value-listenable-builder.dart';

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
        '/stream-builder-web-socket': (context) => Widget14(),
        '/stream-builder-http-response': (context) => Widget14a(),
        '/inherited-model': (context) => Widget15(),
        '/clip-r-react': (context) => Widget16(),
        '/hero': (context) => Widget17(),
        '/hero_detail': (context) => HeroDetailPage(),
        '/custom-paint': (context) => Widget18(),
        '/tooltip': (context) => Widget19(),
        '/fitted-box': (context) => Widget20(),
        '/layout-builder': (context) => Widget21(),
        '/absorb-pointer': (context) => Widget22(),
        '/transform': (context) => Widget23(),
        '/backdrop-filter': (context) => Widget24(),
        '/backdrop-filter-positioned': (context) => Widget24a(),
        '/align': (context) => Widget25(),
        '/positioned': (context) => Widget26(),
        '/animated-builder': (context) => Widget27(),
        '/dismissible': (context) => Widget28(),
        '/dismissible-twin-colors': (context) => Widget28a(),
        '/sized-box': (context) => Widget29(),
        '/sized-box-infinity': (context) => Widget29a(),
        '/sized-box-empty': (context) => Widget29b(),
        '/value-listenable-builder': (context) => Widget30(),
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
            _buildList(context, 'stream-builder-web-socket', '/stream-builder-web-socket'),
            _buildList(context, 'stream-builder-http-response', '/stream-builder-http-response'),
            _buildList(context, 'inherited-model', '/inherited-model'),
            _buildList(context, 'clip-r-react', '/clip-r-react'),
            _buildList(context, 'hero', '/hero'),
            _buildList(context, 'custom-paint', '/custom-paint'),
            _buildList(context, 'tooltip', '/tooltip'),
            _buildList(context, 'fitted-box', '/fitted-box'),
            _buildList(context, 'layout-builder', '/layout-builder'),
            _buildList(context, 'absorb-pointer', '/absorb-pointer'),
            _buildList(context, 'backdrop-filter', '/backdrop-filter'),
            _buildList(context, 'backdrop-filter-positioned', '/backdrop-filter-positioned'),
            _buildList(context, 'align', '/align'),
            _buildList(context, 'positioned', '/positioned'),
            _buildList(context, 'animated-builder', '/animated-builder'),
            _buildList(context, 'dismissible', '/dismissible'),
            _buildList(context, 'dismissible-twin-colors', '/dismissible-twin-colors'),
            _buildList(context, 'sized-box', '/sized-box'),
            _buildList(context, 'sized-box-infinity', '/sized-box-infinity'),
            _buildList(context, 'sized-box-empty', '/sized-box-empty'),
            _buildList(context, 'value-listenable-builder', '/value-listenable-builder'),
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
