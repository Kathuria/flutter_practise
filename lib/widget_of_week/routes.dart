import 'package:flutter/material.dart';
import 'package:flutter_practise/widget_of_week/constants.dart';

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
import 'package:flutter_practise/widget_of_week/main.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    Constants.Initial_Route: (context) => MyWidgetsPage(),
    Constants.Initial_Route + Constants.W1_SafeArea: (context) => Widget1(),
    Constants.Initial_Route + Constants.W2_Expanded: (context) => Widget2(),
    Constants.Initial_Route + Constants.W2a_ExpandedInteractive: (context) =>
        Widget2a(),
    Constants.Initial_Route + Constants.W3_Wrap: (context) => Widget3(),
    Constants.Initial_Route + Constants.W4_AnimatedContainer: (context) =>
        Widget4(),
    Constants.Initial_Route + Constants.W5_Opacity: (context) => Widget5(),
    Constants.Initial_Route + Constants.W5a_OpacityAnimated: (context) =>
        Widget5a(),
    Constants.Initial_Route + Constants.W6_FutureBuilder: (context) =>
        Widget6(),
    Constants.Initial_Route + Constants.W7_FadeTransition: (context) =>
        Widget7(),
    Constants.Initial_Route + Constants.W8_FloatingActionButton: (context) =>
        Widget8(),
    Constants.Initial_Route + Constants.W8a_FABInteractive: (context) =>
        Widget8a(),
    Constants.Initial_Route + Constants.W9_PageView: (context) => Widget9(),
    Constants.Initial_Route + Constants.W9a_PageViewReversed: (context) =>
        Widget9a(),
    Constants.Initial_Route + Constants.W10_Table: (context) => Widget10(),
    Constants.Initial_Route + Constants.W11_SliverAppBar: (context) =>
        Widget11(),
    Constants.Initial_Route + Constants.W12_SliverGridCount: (context) =>
        Widget12(),
    Constants.Initial_Route + Constants.W12a_SliverGridExtent: (context) =>
        Widget12a(),
    Constants.Initial_Route + Constants.W12b_SliverListDelegate: (context) =>
        Widget12b(),
    Constants.Initial_Route + Constants.W13_FadeInImage: (context) =>
        Widget13(),
    Constants.Initial_Route + Constants.W14_StreamBuilderSocket: (context) =>
        Widget14(),
    Constants.Initial_Route + Constants.W14a_StreamBuilderHttp: (context) =>
        Widget14a(),
    Constants.Initial_Route + Constants.W15_InheritedModel: (context) =>
        Widget15(),
    Constants.Initial_Route + Constants.W16_ClipRRect: (context) => Widget16(),
    Constants.Initial_Route + Constants.W16a_ClipRRectInteractive: (context) =>
        Widget16a(),
    Constants.Initial_Route + Constants.W17_Hero: (context) => Widget17(),
    Constants.Initial_Route + 'hero_detail': (context) => HeroDetailPage(),
    Constants.Initial_Route + Constants.W18_CustomPaint: (context) =>
        Widget18(),
    Constants.Initial_Route + Constants.W19_ToolTip: (context) => Widget19(),
    Constants.Initial_Route + Constants.W20_FittedBox: (context) => Widget20(),
    Constants.Initial_Route + Constants.W21_LayOutBuilder: (context) =>
        Widget21(),
    Constants.Initial_Route + Constants.W22_AbsorbPointer: (context) =>
        Widget22(),
    Constants.Initial_Route + Constants.W23_Transform: (context) => Widget23(),
    Constants.Initial_Route + Constants.W24_BackdropFilter: (context) =>
        Widget24(),
    Constants.Initial_Route + Constants.W24a_BackdropFilterPositioned:
        (context) => Widget24a(),
    Constants.Initial_Route + Constants.W25_Align: (context) => Widget25(),
    Constants.Initial_Route + Constants.W26_Positioned: (context) => Widget26(),
    Constants.Initial_Route + Constants.W27_AnimatedBuilder: (context) =>
        Widget27(),
    Constants.Initial_Route + Constants.W28_Dismissible: (context) =>
        Widget28(),
    Constants.Initial_Route + Constants.W29_SizedBox: (context) => Widget29(),
    Constants.Initial_Route + Constants.W29a_SizedBoxInfinity: (context) =>
        Widget29a(),
    Constants.Initial_Route + Constants.W29b_SizedBoxEmpty: (context) =>
        Widget29b(),
    Constants.Initial_Route + Constants.W30_ValueListenableBuilder: (context) =>
        Widget30(),
    Constants.Initial_Route + Constants.W31_DraggableAndBuilder: (context) =>
        Widget31(),
    Constants.Initial_Route + Constants.W32_AnimatedList: (context) =>
        Widget32(),
    Constants.Initial_Route + Constants.W33_Flexible: (context) => Widget33(),
    Constants.Initial_Route + Constants.W34_MediaQuery: (context) => Widget34(),
    Constants.Initial_Route + Constants.W35_Spacer: (context) => Widget35(),
    Constants.Initial_Route + Constants.W36_InheritedWidget: (context) =>
        Widget36(),
    Constants.Initial_Route + Constants.W37_AnimatedIcon: (context) =>
        Widget37(),
    Constants.Initial_Route + Constants.W38_AspectRatio: (context) =>
        Widget38(),
    Constants.Initial_Route + Constants.W39_LimitedBox: (context) => Widget39(),
    Constants.Initial_Route + Constants.W40_PlaceHolder: (context) =>
        Widget40(),
    Constants.Initial_Route + Constants.W41_RichText: (context) => Widget41(),
    Constants.Initial_Route + Constants.W42_ReorderableListView: (context) =>
        Widget42(),
    Constants.Initial_Route + Constants.W43_AnimatedSwitcher: (context) =>
        Widget43(),
    Constants.Initial_Route + Constants.W44_AnimatedPositioned: (context) =>
        Widget44(),
    Constants.Initial_Route + Constants.W45_AnimatedPadding: (context) =>
        Widget45(),
    Constants.Initial_Route + Constants.W46_IndexedStack: (context) =>
        Widget46(),
    Constants.Initial_Route + Constants.W47_Semantics: (context) => Widget47(),
    Constants.Initial_Route + Constants.W48_ConstrainedBox: (context) =>
        Widget48(),
    Constants.Initial_Route + Constants.W49_Stack: (context) => Widget49(),
    Constants.Initial_Route + Constants.W50_AnimatedOpacity: (context) =>
        Widget50(),
    Constants.Initial_Route + Constants.W51_FractionallySizedBox: (context) =>
        Widget51(),
    Constants.Initial_Route + Constants.W52_ListViewAndTile: (context) =>
        Widget52(),
    Constants.Initial_Route + Constants.W53_Container: (context) => Widget53(),
    Constants.Initial_Route + Constants.W54_SelectableText: (context) =>
        Widget54(),
    Constants.Initial_Route + Constants.W55_DataTable: (context) => Widget55(),
    Constants.Initial_Route + Constants.W55a_DataTableFeatures: (context) =>
        Widget55a(),
    Constants.Initial_Route + Constants.W56_Slider: (context) => Widget56(),
    Constants.Initial_Route + Constants.W57_AlertDialog: (context) =>
        Widget57(),
    Constants.Initial_Route + Constants.W58_AnimatedCrossFade: (context) =>
        Widget58(),
    Constants.Initial_Route + Constants.W58a_AnimatedCrossFadeSample:
        (context) => Widget58a(),
    Constants.Initial_Route + Constants.W59_DraggableScrollableSheet:
        (context) => Widget59(),
    Constants.Initial_Route + Constants.W60_ColorFilter: (context) =>
        Widget60(),
    Constants.Initial_Route + Constants.W60a_ColorFilterBlend: (context) =>
        Widget60a(),
    Constants.Initial_Route + Constants.W61_ToggleButtons: (context) =>
        Widget61(),
    Constants.Initial_Route + Constants.W61a_ToggleButtonsForm: (context) =>
        Widget61a(),
    Constants.Initial_Route + Constants.W62_CupertinoActionSheet: (context) =>
        Widget62(),
    Constants.Initial_Route + Constants.W63_TweenAnimationBuilder: (context) =>
        Widget63(),
    Constants.Initial_Route + Constants.W64_ImageFromNetwork: (context) =>
        Widget64(),
    Constants.Initial_Route + Constants.W64a_ImageFromGallery: (context) =>
        Widget64a(),
    Constants.Initial_Route + Constants.W64b_ImageFromCamera: (context) =>
        Widget64b(),
    Constants.Initial_Route + Constants.W65_DefaultTabController: (context) =>
        Widget65(),
    Constants.Initial_Route + Constants.W66_Drawer: (context) => Widget66(),
    Constants.Initial_Route + Constants.W67_SnackBar: (context) => Widget67(),
    Constants.Initial_Route + Constants.W68_ListWheelScrollView: (context) =>
        Widget68(),
    Constants.Initial_Route + Constants.W69_ShaderMask: (context) => Widget69(),
    Constants.Initial_Route + Constants.W70_NotificationListener: (context) =>
        Widget70(),
    Constants.Initial_Route + Constants.W71_ClipPath: (context) => Widget71(),
    Constants.Initial_Route + Constants.W72_ProgressIndicator: (context) =>
        Widget72(),
    Constants.Initial_Route + Constants.W73_Divider: (context) => Widget73(),
    Constants.Initial_Route + Constants.W74_IgnorePointer: (context) =>
        Widget74(),
    Constants.Initial_Route + Constants.W75_CupertinoActivityIndicator:
        (context) => Widget75(),
    Constants.Initial_Route + Constants.W76_ClipOval: (context) => Widget76(),
    Constants.Initial_Route + Constants.W76a_ClipOvalAnimated: (context) =>
        Widget76a(),
    Constants.Initial_Route + Constants.W77_AnimatedWidget: (context) =>
        Widget77(),
    Constants.Initial_Route + Constants.W78_Padding: (context) => Widget78(),
    Constants.Initial_Route + Constants.W79_CheckboxListTile: (context) =>
        Widget79(),
    Constants.Initial_Route + Constants.W80_AboutDialog: (context) =>
        Widget80(),
  };
}
