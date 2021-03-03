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
        primarySwatch: Colors.green,
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
            _buildList(context, 'safe-area', '/widgetOfWeek/safe-area'),
            _buildList(context, 'expanded', '/widgetOfWeek/expanded'),
            _buildList(context, 'expanded-interactive', '/widgetOfWeek/expanded-interactive'),
            _buildList(context, 'wrap', '/widgetOfWeek/wrap'),
            _buildList(context, 'animated-container', '/widgetOfWeek/animated-container'),
            _buildList(context, 'opacity', '/widgetOfWeek/opacity'),
            _buildList(context, 'animated-opacity', '/widgetOfWeek/animated-opacity'),
            _buildList(context, 'future-builder', '/widgetOfWeek/future-builder'),
            _buildList(context, 'fade-transition', '/widgetOfWeek/fade-transition'),
            _buildList(context, 'floating-action-button', '/widgetOfWeek/floating-action-button'),
            _buildList(context, 'fab-interactive', '/widgetOfWeek/fab-interactive'),
            _buildList(context, 'page-view', '/widgetOfWeek/page-view'),
            _buildList(context, 'page-view-reversed', '/widgetOfWeek/page-view-reversed'),
            _buildList(context, 'table', '/widgetOfWeek/table'),
            _buildList(context, 'sliver-app-bar', '/widgetOfWeek/sliver-app-bar'),
            _buildList(context, 'sliver-grid-count', '/widgetOfWeek/sliver-grid-count'),
            _buildList(context, 'sliver-grid-extent', '/widgetOfWeek/sliver-grid-extent'),
            _buildList(context, 'sliver-list-delegate', '/widgetOfWeek/sliver-list-delegate'),
            _buildList(context, 'fade-in-image', '/widgetOfWeek/fade-in-image'),
            _buildList(context, 'stream-builder-web-socket', '/widgetOfWeek/stream-builder-web-socket'),
            _buildList(context, 'stream-builder-http-response', '/widgetOfWeek/stream-builder-http-response'),
            _buildList(context, 'inherited-model', '/widgetOfWeek/inherited-model'),
            _buildList(context, 'clip-r-rect', '/widgetOfWeek/clip-r-rect'),
            _buildList(context, 'clip-r-rect-interactive', '/widgetOfWeek/clip-r-rect-interactive'),
            _buildList(context, 'hero', '/widgetOfWeek/hero'),
            _buildList(context, 'custom-paint', '/widgetOfWeek/custom-paint'),
            _buildList(context, 'tooltip', '/widgetOfWeek/tooltip'),
            _buildList(context, 'fitted-box', '/widgetOfWeek/fitted-box'),
            _buildList(context, 'layout-builder', '/widgetOfWeek/layout-builder'),
            _buildList(context, 'absorb-pointer', '/widgetOfWeek/absorb-pointer'),
            _buildList(context, 'transform', '/widgetOfWeek/transform'),
            _buildList(context, 'backdrop-filter', '/widgetOfWeek/backdrop-filter'),
            _buildList(context, 'backdrop-filter-positioned', '/widgetOfWeek/backdrop-filter-positioned'),
            _buildList(context, 'align', '/widgetOfWeek/align'),
            _buildList(context, 'positioned', '/widgetOfWeek/positioned'),
            _buildList(context, 'animated-builder', '/widgetOfWeek/animated-builder'),
            _buildList(context, 'dismissible', '/widgetOfWeek/dismissible'),
            _buildList(context, 'sized-box', '/widgetOfWeek/sized-box'),
            _buildList(context, 'sized-box-infinity', '/widgetOfWeek/sized-box-infinity'),
            _buildList(context, 'sized-box-empty', '/widgetOfWeek/sized-box-empty'),
            _buildList(context, 'value-listenable-builder', '/widgetOfWeek/value-listenable-builder'),
            _buildList(context, 'draggable & builder', '/widgetOfWeek/draggable'),
            _buildList(context, 'animated-list', '/widgetOfWeek/animated-list'),
            _buildList(context, 'flexible', '/widgetOfWeek/flexible'),
            _buildList(context, 'media-query', '/widgetOfWeek/media-query'),
            _buildList(context, 'spacer', '/widgetOfWeek/spacer'),
            _buildList(context, 'inherited-widget', '/widgetOfWeek/inherited-widget'),
            _buildList(context, 'animated-icon', '/widgetOfWeek/animated-icon'),
            _buildList(context, 'aspect-ratio', '/widgetOfWeek/aspect-ratio'),
            _buildList(context, 'limited-box', '/widgetOfWeek/limited-box'),
            _buildList(context, 'placeholder', '/widgetOfWeek/placeholder'),
            _buildList(context, 'rich-text', '/widgetOfWeek/rich-text'),
            _buildList(context, 'reorderable-list-view', '/widgetOfWeek/reorderable-list-view'),
            _buildList(context, 'animated-switcher', '/widgetOfWeek/animated-switcher'),
            _buildList(context, 'animated-position', '/widgetOfWeek/animated-position'),
            _buildList(context, 'animated-padding', '/widgetOfWeek/animated-padding'),
            _buildList(context, 'indexed-stack', '/widgetOfWeek/indexed-stack'),
            _buildList(context, 'semantics', '/widgetOfWeek/semantics'),
            _buildList(context, 'constrained-box', '/widgetOfWeek/constrained-box'),
            _buildList(context, 'stack', '/widgetOfWeek/stack'),
            _buildList(context, 'animated-opacity', '/widgetOfWeek/animated-opacity'),
            _buildList(context, 'fractionally-sized-box', '/widgetOfWeek/fractionally-sized-box'),
            _buildList(context, 'list-view and tile', '/widgetOfWeek/list-view'),
            _buildList(context, 'container', '/widgetOfWeek/container'),
            _buildList(context, 'selectable-text', '/widgetOfWeek/selectable-text'),
            _buildList(context, 'data-table', '/widgetOfWeek/data-table'),
            _buildList(context, 'data-table-features', '/widgetOfWeek/data-table-features'),
            _buildList(context, 'slider', '/widgetOfWeek/slider'),
            _buildList(context, 'alert-dialog', '/widgetOfWeek/alert-dialog'),
            _buildList(context, 'animated-crossfade', '/widgetOfWeek/animated-crossfade'),
            _buildList(context, 'animated-crossfade-sample', '/widgetOfWeek/animated-crossfade-sample'),
            _buildList(context, 'draggable-scrollable-sheet', '/widgetOfWeek/draggable-scrollable-sheet'),
            _buildList(context, 'color-filtered', '/widgetOfWeek/color-filtered'),
            _buildList(context, 'color-filtered-blend', '/widgetOfWeek/color-filtered-blend'),
            _buildList(context, 'toggle-buttons', '/widgetOfWeek/toggle-buttons'),
            _buildList(context, 'toggle-buttons-form', '/widgetOfWeek/toggle-buttons-form'),
            _buildList(context, 'cupertino-action-sheet', '/widgetOfWeek/cupertino-action-sheet'),
            _buildList(context, 'tween-animation-builder', '/widgetOfWeek/tween-animation-builder'),
            _buildList(context, 'image-from-network', '/widgetOfWeek/image-from-network'),
            _buildList(context, 'image-from-gallery', '/widgetOfWeek/image-from-gallery'),
            _buildList(context, 'image-from-camera', '/widgetOfWeek/image-from-camera'),
            _buildList(context, 'tab-controller-and-tabbar', '/widgetOfWeek/tab-controller-and-tabbar'),
            _buildList(context, 'drawer', '/widgetOfWeek/drawer'),
            _buildList(context, 'snack-bar', '/widgetOfWeek/snack-bar'),
            _buildList(context, 'list-wheel-scroll-view', '/widgetOfWeek/list-wheel-scroll-view'),
            _buildList(context, 'shader-mask', '/widgetOfWeek/shader-mask'),
            _buildList(context, 'notification-listener', '/widgetOfWeek/notification-listener'),
            _buildList(context, 'clip-path', '/widgetOfWeek/clip-path'),
            _buildList(context, 'progress-indicator', '/widgetOfWeek/progress-indicator'),
            _buildList(context, 'divider', '/widgetOfWeek/divider'),
            _buildList(context, 'ignore-pointer', '/widgetOfWeek/ignore-pointer'),
            _buildList(context, 'cupertino-activity-indicator', '/widgetOfWeek/cupertino-activity-indicator'),
            _buildList(context, 'clip-oval', '/widgetOfWeek/clip-oval'),
            _buildList(context, 'clip-oval-animated', '/widgetOfWeek/clip-oval-animated'),
            _buildList(context, 'animated-widget', '/widgetOfWeek/animated-widget'),
            _buildList(context, 'padding', '/widgetOfWeek/padding'),
            _buildList(context, 'checkbox-list-tile', '/widgetOfWeek/checkbox-list-tile'),
            _buildList(context, 'about-dialog', '/widgetOfWeek/about-dialog'),
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
