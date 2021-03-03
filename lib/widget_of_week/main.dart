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
import 'package:flutter_practise/widget_of_week/53-container.dart';
import 'package:flutter_practise/widget_of_week/54-selectable-text.dart';
import 'package:flutter_practise/widget_of_week/55-data-table.dart';
import 'package:flutter_practise/widget_of_week/55a-data-table-features.dart';
import 'package:flutter_practise/widget_of_week/56-slider.dart';
import 'package:flutter_practise/widget_of_week/57-alert-dialog.dart';
import 'package:flutter_practise/widget_of_week/58-animated-crossfade.dart';
import 'package:flutter_practise/widget_of_week/58a-animated-crossfade-sample.dart';
import 'package:flutter_practise/widget_of_week/59-draggable-scrollable-sheet.dart';
import 'package:flutter_practise/widget_of_week/60-color-filtered.dart';
import 'package:flutter_practise/widget_of_week/60a-color-filtered-blend.dart';
import 'package:flutter_practise/widget_of_week/61-toggle-buttons.dart';
import 'package:flutter_practise/widget_of_week/61a-toggle-buttons-form.dart';
import 'package:flutter_practise/widget_of_week/62-cupertino-action-sheet.dart';
import 'package:flutter_practise/widget_of_week/63-tween-animation-builder.dart';
import 'package:flutter_practise/widget_of_week/64-image-from-network.dart';
import 'package:flutter_practise/widget_of_week/64a-image-from-gallery.dart';
import 'package:flutter_practise/widget_of_week/64b-image-from-camera.dart';
import 'package:flutter_practise/widget_of_week/65-tab-controller-and-tabbar.dart';
import 'package:flutter_practise/widget_of_week/66-drawer.dart';
import 'package:flutter_practise/widget_of_week/67-snackbar.dart';
import 'package:flutter_practise/widget_of_week/68-list-wheel-scroll-view.dart';
import 'package:flutter_practise/widget_of_week/69-shader-mask.dart';
import 'package:flutter_practise/widget_of_week/70-notification-listener.dart';
import 'package:flutter_practise/widget_of_week/71-clip-path.dart';
import 'package:flutter_practise/widget_of_week/72-progress-indicator.dart';
import 'package:flutter_practise/widget_of_week/73-divider.dart';
import 'package:flutter_practise/widget_of_week/74-ignore-pointer.dart';
import 'package:flutter_practise/widget_of_week/75-cupertino-activity-indicator.dart';
import 'package:flutter_practise/widget_of_week/76-clip-oval.dart';
import 'package:flutter_practise/widget_of_week/76a-clip-oval-animated.dart';
import 'package:flutter_practise/widget_of_week/77-animated-widget.dart';
import 'package:flutter_practise/widget_of_week/78-padding.dart';
import 'package:flutter_practise/widget_of_week/79-checkbox-list-tile.dart';
import 'package:flutter_practise/widget_of_week/80-about-dialog.dart';

class WidgetOfWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      initialRoute: '/widgetOfWeek/',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/widgetOfWeek/': (context) => MyWidgetsPage(),
        '/widgetOfWeek/safe-area': (context) => Widget1(),
        '/widgetOfWeek/expanded': (context) => Widget2(),
        '/widgetOfWeek/expanded-interactive': (context) => Widget2a(),
        '/widgetOfWeek/wrap': (context) => Widget3(),
        '/widgetOfWeek/animated-container': (context) => Widget4(),
        '/widgetOfWeek/opacity': (context) => Widget5(),
        '/widgetOfWeek/animated-opacity': (context) => Widget5a(),
        '/widgetOfWeek/future-builder': (context) => Widget6(),
        '/widgetOfWeek/fade-transition': (context) => Widget7(),
        '/widgetOfWeek/floating-action-button': (context) => Widget8(),
        '/widgetOfWeek/fab-interactive': (context) => Widget8a(),
        '/widgetOfWeek/page-view': (context) => Widget9(),
        '/widgetOfWeek/page-view-reversed': (context) => Widget9a(),
        '/widgetOfWeek/table': (context) => Widget10(),
        '/widgetOfWeek/sliver-app-bar': (context) => Widget11(),
        '/widgetOfWeek/sliver-grid-count': (context) => Widget12(),
        '/widgetOfWeek/sliver-grid-extent': (context) => Widget12a(),
        '/widgetOfWeek/sliver-list-delegate': (context) => Widget12b(),
        '/widgetOfWeek/fade-in-image': (context) => Widget13(),
        '/widgetOfWeek/stream-builder-web-socket': (context) => Widget14(),
        '/widgetOfWeek/stream-builder-http-response': (context) => Widget14a(),
        '/widgetOfWeek/inherited-model': (context) => Widget15(),
        '/widgetOfWeek/clip-r-rect': (context) => Widget16(),
        '/widgetOfWeek/clip-r-rect-interactive': (context) => Widget16a(),
        '/widgetOfWeek/hero': (context) => Widget17(),
        '/widgetOfWeek/hero_detail': (context) => HeroDetailPage(),
        '/widgetOfWeek/custom-paint': (context) => Widget18(),
        '/widgetOfWeek/tooltip': (context) => Widget19(),
        '/widgetOfWeek/fitted-box': (context) => Widget20(),
        '/widgetOfWeek/layout-builder': (context) => Widget21(),
        '/widgetOfWeek/absorb-pointer': (context) => Widget22(),
        '/widgetOfWeek/transform': (context) => Widget23(),
        '/widgetOfWeek/backdrop-filter': (context) => Widget24(),
        '/widgetOfWeek/backdrop-filter-positioned': (context) => Widget24a(),
        '/widgetOfWeek/align': (context) => Widget25(),
        '/widgetOfWeek/positioned': (context) => Widget26(),
        '/widgetOfWeek/animated-builder': (context) => Widget27(),
        '/widgetOfWeek/dismissible': (context) => Widget28(),
        '/widgetOfWeek/sized-box': (context) => Widget29(),
        '/widgetOfWeek/sized-box-infinity': (context) => Widget29a(),
        '/widgetOfWeek/sized-box-empty': (context) => Widget29b(),
        '/widgetOfWeek/value-listenable-builder': (context) => Widget30(),
        '/widgetOfWeek/draggable': (context) => Widget31(),
        '/widgetOfWeek/animated-list': (context) => Widget32(),
        '/widgetOfWeek/flexible': (context) => Widget33(),
        '/widgetOfWeek/media-query': (context) => Widget34(),
        '/widgetOfWeek/spacer': (context) => Widget35(),
        '/widgetOfWeek/inherited-widget': (context) => Widget36(),
        '/widgetOfWeek/animated-icon': (context) => Widget37(),
        '/widgetOfWeek/aspect-ratio': (context) => Widget38(),
        '/widgetOfWeek/limited-box': (context) => Widget39(),
        '/widgetOfWeek/placeholder': (context) => Widget40(),
        '/widgetOfWeek/rich-text': (context) => Widget41(),
        '/widgetOfWeek/reorderable-list-view': (context) => Widget42(),
        '/widgetOfWeek/animated-switcher': (context) => Widget43(),
        '/widgetOfWeek/animated-position': (context) => Widget44(),
        '/widgetOfWeek/animated-padding': (context) => Widget45(),
        '/widgetOfWeek/indexed-stack': (context) => Widget46(),
        '/widgetOfWeek/semantics': (context) => Widget47(),
        '/widgetOfWeek/constrained-box': (context) => Widget48(),
        '/widgetOfWeek/stack': (context) => Widget49(),
        '/widgetOfWeek/animated-opacity': (context) => Widget50(),
        '/widgetOfWeek/fractionally-sized-box': (context) => Widget51(),
        '/widgetOfWeek/list-view': (context) => Widget52(),
        '/widgetOfWeek/container': (context) => Widget53(),
        '/widgetOfWeek/selectable-text': (context) => Widget54(),
        '/widgetOfWeek/data-table': (context) => Widget55(),
        '/widgetOfWeek/data-table-features': (context) => Widget55a(),
        '/widgetOfWeek/slider': (context) => Widget56(),
        '/widgetOfWeek/alert-dialog': (context) => Widget57(),
        '/widgetOfWeek/animated-crossfade': (context) => Widget58(),
        '/widgetOfWeek/animated-crossfade-sample': (context) => Widget58a(),
        '/widgetOfWeek/draggable-scrollable-sheet': (context) => Widget59(),
        '/widgetOfWeek/color-filtered': (context) => Widget60(),
        '/widgetOfWeek/color-filtered-blend': (context) => Widget60a(),
        '/widgetOfWeek/toggle-buttons': (context) => Widget61(),
        '/widgetOfWeek/toggle-buttons-form': (context) => Widget61a(),
        '/widgetOfWeek/cupertino-action-sheet': (context) => Widget62(),
        '/widgetOfWeek/tween-animation-builder': (context) => Widget63(),
        '/widgetOfWeek/image-from-network': (context) => Widget64(),
        '/widgetOfWeek/image-from-gallery': (context) => Widget64a(),
        '/widgetOfWeek/image-from-camera': (context) => Widget64b(),
        '/widgetOfWeek/tab-controller-and-tabbar': (context) => Widget65(),
        '/widgetOfWeek/drawer': (context) => Widget66(),
        '/widgetOfWeek/snack-bar': (context) => Widget67(),
        '/widgetOfWeek/list-wheel-scroll-view': (context) => Widget68(),
        '/widgetOfWeek/shader-mask': (context) => Widget69(),
        '/widgetOfWeek/notification-listener': (context) => Widget70(),
        '/widgetOfWeek/clip-path': (context) => Widget71(),
        '/widgetOfWeek/progress-indicator': (context) => Widget72(),
        '/widgetOfWeek/divider': (context) => Widget73(),
        '/widgetOfWeek/ignore-pointer': (context) => Widget74(),
        '/widgetOfWeek/cupertino-activity-indicator': (context) => Widget75(),
        '/widgetOfWeek/clip-oval': (context) => Widget76(),
        '/widgetOfWeek/clip-oval-animated': (context) => Widget76a(),
        '/widgetOfWeek/animated-widget': (context) => Widget77(),
        '/widgetOfWeek/padding': (context) => Widget78(),
        '/widgetOfWeek/checkbox-list-tile': (context) => Widget79(),
        '/widgetOfWeek/about-dialog': (context) => Widget80(),
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
