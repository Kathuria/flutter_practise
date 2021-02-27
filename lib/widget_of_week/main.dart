import 'package:flutter/material.dart';
import 'package:flutter_practise/widget_of_week/1-safearea.dart';
import 'package:flutter_practise/widget_of_week/2-expanded.dart';
import 'package:flutter_practise/widget_of_week/2a-expanded-interactive.dart';
import 'package:flutter_practise/widget_of_week/3-wrap.dart';
import 'package:flutter_practise/widget_of_week/4-animated-container.dart';
import 'package:flutter_practise/widget_of_week/5-opacity.dart';
import 'package:flutter_practise/widget_of_week/5a-animated-opacity.dart';
import 'package:flutter_practise/widget_of_week/6-future-builder.dart';
import 'package:flutter_practise/widget_of_week/7-fade-transition.dart';
import 'package:flutter_practise/widget_of_week/8-floating-action-button.dart';
import 'package:flutter_practise/widget_of_week/8a-fab-interactive.dart';
import 'package:flutter_practise/widget_of_week/9-page-view.dart';
import 'package:flutter_practise/widget_of_week/9a-page-view-reversed.dart';
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
import 'package:flutter_practise/widget_of_week/16a-clip-rrect-interactive.dart';
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
import 'package:flutter_practise/widget_of_week/29-sized-box.dart';
import 'package:flutter_practise/widget_of_week/29a-sized-box-infinity.dart';
import 'package:flutter_practise/widget_of_week/29b-sized-box-empty.dart';
import 'package:flutter_practise/widget_of_week/30-value-listenable-builder.dart';
import 'package:flutter_practise/widget_of_week/31-draggable.dart';
import 'package:flutter_practise/widget_of_week/32-animated-list.dart';
import 'package:flutter_practise/widget_of_week/33-flexible.dart';
import 'package:flutter_practise/widget_of_week/34-media-query.dart';
import 'package:flutter_practise/widget_of_week/35-spacer.dart';
import 'package:flutter_practise/widget_of_week/36-inherited-widget.dart';
import 'package:flutter_practise/widget_of_week/37-animated-icon.dart';
import 'package:flutter_practise/widget_of_week/38-aspect-ratio.dart';
import 'package:flutter_practise/widget_of_week/39-limited-box.dart';
import 'package:flutter_practise/widget_of_week/40-placeholder.dart';
import 'package:flutter_practise/widget_of_week/41-rich-text.dart';
import 'package:flutter_practise/widget_of_week/42-reorderable-list-view.dart';
import 'package:flutter_practise/widget_of_week/43-animated-switcher.dart';
import 'package:flutter_practise/widget_of_week/44-animated-position.dart';
import 'package:flutter_practise/widget_of_week/45-animated-padding.dart';
import 'package:flutter_practise/widget_of_week/46-indexed-stack.dart';
import 'package:flutter_practise/widget_of_week/47-semantics.dart';
import 'package:flutter_practise/widget_of_week/48-constrained-box.dart';
import 'package:flutter_practise/widget_of_week/49-stack.dart';
import 'package:flutter_practise/widget_of_week/50-animated-opacity.dart';
import 'package:flutter_practise/widget_of_week/51-fractionally-sized-box.dart';
import 'package:flutter_practise/widget_of_week/52-list-view.dart';

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
        '/expanded-interactive': (context) => Widget2a(),
        '/wrap': (context) => Widget3(),
        '/animated-container': (context) => Widget4(),
        '/opacity': (context) => Widget5(),
        '/animated-opacity': (context) => Widget5a(),
        '/future-builder': (context) => Widget6(),
        '/fade-transition': (context) => Widget7(),
        '/floating-action-button': (context) => Widget8(),
        '/fab-interactive': (context) => Widget8a(),
        '/page-view': (context) => Widget9(),
        '/page-view-reversed': (context) => Widget9a(),
        '/table': (context) => Widget10(),
        '/sliver-app-bar': (context) => Widget11(),
        '/sliver-grid-count': (context) => Widget12(),
        '/sliver-grid-extent': (context) => Widget12a(),
        '/sliver-list-delegate': (context) => Widget12b(),
        '/fade-in-image': (context) => Widget13(),
        '/stream-builder-web-socket': (context) => Widget14(),
        '/stream-builder-http-response': (context) => Widget14a(),
        '/inherited-model': (context) => Widget15(),
        '/clip-r-rect': (context) => Widget16(),
        '/clip-r-rect-interactive': (context) => Widget16a(),
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
        '/sized-box': (context) => Widget29(),
        '/sized-box-infinity': (context) => Widget29a(),
        '/sized-box-empty': (context) => Widget29b(),
        '/value-listenable-builder': (context) => Widget30(),
        '/draggable': (context) => Widget31(),
        '/animated-list': (context) => Widget32(),
        '/flexible': (context) => Widget33(),
        '/media-query': (context) => Widget34(),
        '/spacer': (context) => Widget35(),
        '/inherited-widget': (context) => Widget36(),
        '/animated-icon': (context) => Widget37(),
        '/aspect-ratio': (context) => Widget38(),
        '/limited-box': (context) => Widget39(),
        '/placeholder': (context) => Widget40(),
        '/rich-text': (context) => Widget41(),
        '/reorderable-list-view': (context) => Widget42(),
        '/animated-switcher': (context) => Widget43(),
        '/animated-position': (context) => Widget44(),
        '/animated-padding': (context) => Widget45(),
        '/indexed-stack': (context) => Widget46(),
        '/semantics': (context) => Widget47(),
        '/constrained-box': (context) => Widget48(),
        '/stack': (context) => Widget49(),
        '/animated-opacity': (context) => Widget50(),
        '/fractionally-sized-box': (context) => Widget51(),
        '/list-view': (context) => Widget52(),
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
            _buildList(context, 'expanded-interactive', '/expanded-interactive'),
            _buildList(context, 'wrap', '/wrap'),
            _buildList(context, 'animated-container', '/animated-container'),
            _buildList(context, 'opacity', '/opacity'),
            _buildList(context, 'animated-opacity', '/animated-opacity'),
            _buildList(context, 'future-builder', '/future-builder'),
            _buildList(context, 'fade-transition', '/fade-transition'),
            _buildList(context, 'floating-action-button', '/floating-action-button'),
            _buildList(context, 'fab-interactive', '/fab-interactive'),
            _buildList(context, 'page-view', '/page-view'),
            _buildList(context, 'page-view-reversed', '/page-view-reversed'),
            _buildList(context, 'table', '/table'),
            _buildList(context, 'sliver-app-bar', '/sliver-app-bar'),
            _buildList(context, 'sliver-grid-count', '/sliver-grid-count'),
            _buildList(context, 'sliver-grid-extent', '/sliver-grid-extent'),
            _buildList(context, 'sliver-list-delegate', '/sliver-list-delegate'),
            _buildList(context, 'fade-in-image', '/fade-in-image'),
            _buildList(context, 'stream-builder-web-socket', '/stream-builder-web-socket'),
            _buildList(context, 'stream-builder-http-response', '/stream-builder-http-response'),
            _buildList(context, 'inherited-model', '/inherited-model'),
            _buildList(context, 'clip-r-rect', '/clip-r-rect'),
            _buildList(context, 'clip-r-rect-interactive', '/clip-r-rect-interactive'),
            _buildList(context, 'hero', '/hero'),
            _buildList(context, 'custom-paint', '/custom-paint'),
            _buildList(context, 'tooltip', '/tooltip'),
            _buildList(context, 'fitted-box', '/fitted-box'),
            _buildList(context, 'layout-builder', '/layout-builder'),
            _buildList(context, 'absorb-pointer', '/absorb-pointer'),
            _buildList(context, 'transform', '/transform'),
            _buildList(context, 'backdrop-filter', '/backdrop-filter'),
            _buildList(context, 'backdrop-filter-positioned', '/backdrop-filter-positioned'),
            _buildList(context, 'align', '/align'),
            _buildList(context, 'positioned', '/positioned'),
            _buildList(context, 'animated-builder', '/animated-builder'),
            _buildList(context, 'dismissible', '/dismissible'),
            _buildList(context, 'sized-box', '/sized-box'),
            _buildList(context, 'sized-box-infinity', '/sized-box-infinity'),
            _buildList(context, 'sized-box-empty', '/sized-box-empty'),
            _buildList(context, 'value-listenable-builder', '/value-listenable-builder'),
            _buildList(context, 'draggable', '/draggable'),
            _buildList(context, 'animated-list', '/animated-list'),
            _buildList(context, 'flexible', '/flexible'),
            _buildList(context, 'media-query', '/media-query'),
            _buildList(context, 'spacer', '/spacer'),
            _buildList(context, 'inherited-widget', '/inherited-widget'),
            _buildList(context, 'animated-icon', '/animated-icon'),
            _buildList(context, 'aspect-ratio', '/aspect-ratio'),
            _buildList(context, 'limited-box', '/limited-box'),
            _buildList(context, 'placeholder', '/placeholder'),
            _buildList(context, 'rich-text', '/rich-text'),
            _buildList(context, 'reorderable-list-view', '/reorderable-list-view'),
            _buildList(context, 'animated-switcher', '/animated-switcher'),
            _buildList(context, 'animated-position', '/animated-position'),
            _buildList(context, 'animated-padding', '/animated-padding'),
            _buildList(context, 'indexed-stack', '/indexed-stack'),
            _buildList(context, 'semantics', '/semantics'),
            _buildList(context, 'constrained-box', '/constrained-box'),
            _buildList(context, 'stack', '/stack'),
            _buildList(context, 'animated-opacity', '/animated-opacity'),
            _buildList(context, 'fractionally-sized-box', '/fractionally-sized-box'),
            _buildList(context, 'list-view', '/list-view'),
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
