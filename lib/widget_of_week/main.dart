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
            _buildList(context, Constants.W1_SafeArea, Constants.Initial_Route + Constants.W1_SafeArea),
            _buildList(context, Constants.W2_Expanded, Constants.Initial_Route + Constants.W2_Expanded),
            _buildList(context, Constants.W2a_ExpandedInteractive, Constants.Initial_Route + Constants.W2a_ExpandedInteractive),
            _buildList(context, Constants.W3_Wrap, Constants.Initial_Route + Constants.W3_Wrap),
            _buildList(context, Constants.W4_AnimatedContainer, Constants.Initial_Route + Constants.W4_AnimatedContainer),
            _buildList(context, Constants.W5_Opacity, Constants.Initial_Route + Constants.W5_Opacity),
            _buildList(context, Constants.W5a_OpacityAnimated, Constants.Initial_Route + Constants.W5a_OpacityAnimated),
            _buildList(context, Constants.W6_FutureBuilder, Constants.Initial_Route + Constants.W6_FutureBuilder),
            _buildList(context, Constants.W7_FadeTransition, Constants.Initial_Route + Constants.W7_FadeTransition),
            _buildList(context, Constants.W8_FloatingActionButton, Constants.Initial_Route + Constants.W8_FloatingActionButton),
            _buildList(context, Constants.W8a_FABInteractive, Constants.Initial_Route + Constants.W8a_FABInteractive),
            _buildList(context, Constants.W9_PageView, Constants.Initial_Route + Constants.W9_PageView),
            _buildList(context, Constants.W9a_PageViewReversed, Constants.Initial_Route + Constants.W9a_PageViewReversed),
            _buildList(context, Constants.W10_Table, Constants.Initial_Route + Constants.W10_Table),
            _buildList(context, Constants.W11_SliverAppBar, Constants.Initial_Route + Constants.W11_SliverAppBar),
            _buildList(context, Constants.W12_SliverGridCount, Constants.Initial_Route + Constants.W12_SliverGridCount),
            _buildList(context, Constants.W12a_SliverGridExtent, Constants.Initial_Route + Constants.W12a_SliverGridExtent),
            _buildList(context, Constants.W12b_SliverListDelegate, Constants.Initial_Route + Constants.W12b_SliverListDelegate),
            _buildList(context, Constants.W13_FadeInImage, Constants.Initial_Route + Constants.W13_FadeInImage),
            _buildList(context, Constants.W14_StreamBuilderSocket, Constants.Initial_Route + Constants.W14_StreamBuilderSocket),
            _buildList(context, Constants.W14a_StreamBuilderHttp, Constants.Initial_Route + Constants.W14a_StreamBuilderHttp),
            _buildList(context, Constants.W15_InheritedModel, Constants.Initial_Route + Constants.W15_InheritedModel),
            _buildList(context, Constants.W16_ClipRRect, Constants.Initial_Route + Constants.W16_ClipRRect),
            _buildList(context, Constants.W16a_ClipRRectInteractive, Constants.Initial_Route + Constants.W16a_ClipRRectInteractive),
            _buildList(context, Constants.W17_Hero, Constants.Initial_Route + Constants.W17_Hero),
            _buildList(context, Constants.W18_CustomPaint, Constants.Initial_Route + Constants.W18_CustomPaint),
            _buildList(context, Constants.W19_ToolTip, Constants.Initial_Route + Constants.W19_ToolTip),
            _buildList(context, Constants.W20_FittedBox, Constants.Initial_Route + Constants.W20_FittedBox),
            _buildList(context, Constants.W21_LayOutBuilder, Constants.Initial_Route + Constants.W21_LayOutBuilder),
            _buildList(context, Constants.W22_AbsorbPointer, Constants.Initial_Route + Constants.W22_AbsorbPointer),
            _buildList(context, Constants.W23_Transform, Constants.Initial_Route + Constants.W23_Transform),
            _buildList(context, Constants.W24_BackdropFilter, Constants.Initial_Route + Constants.W24_BackdropFilter),
            _buildList(context, Constants.W24a_BackdropFilterPositioned, Constants.Initial_Route + Constants.W24a_BackdropFilterPositioned),
            _buildList(context, Constants.W25_Align, Constants.Initial_Route + Constants.W25_Align),
            _buildList(context, Constants.W26_Positioned, Constants.Initial_Route + Constants.W26_Positioned),
            _buildList(context, Constants.W27_AnimatedBuilder, Constants.Initial_Route + Constants.W27_AnimatedBuilder),
            _buildList(context, Constants.W28_Dismissible, Constants.Initial_Route + Constants.W28_Dismissible),
            _buildList(context, Constants.W29_SizedBox, Constants.Initial_Route + Constants.W29_SizedBox),
            _buildList(context, Constants.W29a_SizedBoxInfinity, Constants.Initial_Route + Constants.W29a_SizedBoxInfinity),
            _buildList(context, Constants.W29b_SizedBoxEmpty, Constants.Initial_Route + Constants.W29b_SizedBoxEmpty),
            _buildList(context, Constants.W30_ValueListenableBuilder, Constants.Initial_Route + Constants.W30_ValueListenableBuilder),
            _buildList(context, Constants.W31_DraggableAndBuilder, Constants.Initial_Route + Constants.W31_DraggableAndBuilder),
            _buildList(context, Constants.W32_AnimatedList, Constants.Initial_Route + Constants.W32_AnimatedList),
            _buildList(context, Constants.W33_Flexible, Constants.Initial_Route + Constants.W33_Flexible),
            _buildList(context, Constants.W34_MediaQuery, Constants.Initial_Route + Constants.W34_MediaQuery),
            _buildList(context, Constants.W35_Spacer, Constants.Initial_Route + Constants.W35_Spacer),
            _buildList(context, Constants.W36_InheritedWidget, Constants.Initial_Route + Constants.W36_InheritedWidget),
            _buildList(context, Constants.W37_AnimatedIcon, Constants.Initial_Route + Constants.W37_AnimatedIcon),
            _buildList(context, Constants.W38_AspectRatio, Constants.Initial_Route + Constants.W38_AspectRatio),
            _buildList(context, Constants.W39_LimitedBox, Constants.Initial_Route + Constants.W39_LimitedBox),
            _buildList(context, Constants.W40_PlaceHolder, Constants.Initial_Route + Constants.W40_PlaceHolder),
            _buildList(context, Constants.W41_RichText, Constants.Initial_Route + Constants.W41_RichText),
            _buildList(context, Constants.W42_ReorderableListView, Constants.Initial_Route + Constants.W42_ReorderableListView),
            _buildList(context, Constants.W43_AnimatedSwitcher, Constants.Initial_Route + Constants.W43_AnimatedSwitcher),
            _buildList(context, Constants.W44_AnimatedPositioned, Constants.Initial_Route + Constants.W44_AnimatedPositioned),
            _buildList(context, Constants.W45_AnimatedPadding, Constants.Initial_Route + Constants.W45_AnimatedPadding),
            _buildList(context, Constants.W46_IndexedStack, Constants.Initial_Route + Constants.W46_IndexedStack),
            _buildList(context, Constants.W47_Semantics, Constants.Initial_Route + Constants.W47_Semantics),
            _buildList(context, Constants.W48_ConstrainedBox, Constants.Initial_Route + Constants.W48_ConstrainedBox),
            _buildList(context, Constants.W49_Stack, Constants.Initial_Route + Constants.W49_Stack),
            _buildList(context, Constants.W50_AnimatedOpacity, Constants.Initial_Route + Constants.W50_AnimatedOpacity),
            _buildList(context, Constants.W51_FractionallySizedBox, Constants.Initial_Route + Constants.W51_FractionallySizedBox),
            _buildList(context, Constants.W52_ListViewAndTile, Constants.Initial_Route + Constants.W52_ListViewAndTile),
            _buildList(context, Constants.W53_Container, Constants.Initial_Route + Constants.W53_Container),
            _buildList(context, Constants.W54_SelectableText, Constants.Initial_Route + Constants.W54_SelectableText),
            _buildList(context, Constants.W55_DataTable, Constants.Initial_Route + Constants.W55_DataTable),
            _buildList(context, Constants.W55a_DataTableFeatures, Constants.Initial_Route + Constants.W55a_DataTableFeatures),
            _buildList(context, Constants.W56_Slider, Constants.Initial_Route + Constants.W56_Slider),
            _buildList(context, Constants.W57_AlertDialog, Constants.Initial_Route + Constants.W57_AlertDialog),
            _buildList(context, Constants.W58_AnimatedCrossFade, Constants.Initial_Route + Constants.W58_AnimatedCrossFade),
            _buildList(context, Constants.W58a_AnimatedCrossFadeSample, Constants.Initial_Route + Constants.W58a_AnimatedCrossFadeSample),
            _buildList(context, Constants.W59_DraggableScrollableSheet, Constants.Initial_Route + Constants.W59_DraggableScrollableSheet),
            _buildList(context, Constants.W60_ColorFilter, Constants.Initial_Route + Constants.W60_ColorFilter),
            _buildList(context, Constants.W60a_ColorFilterBlend, Constants.Initial_Route + Constants.W60a_ColorFilterBlend),
            _buildList(context, Constants.W61_ToggleButtons, Constants.Initial_Route + Constants.W61_ToggleButtons),
            _buildList(context, Constants.W61a_ToggleButtonsForm, Constants.Initial_Route + Constants.W61a_ToggleButtonsForm),
            _buildList(context, Constants.W62_CupertinoActionSheet, Constants.Initial_Route + Constants.W62_CupertinoActionSheet),
            _buildList(context, Constants.W63_TweenAnimationBuilder, Constants.Initial_Route + Constants.W63_TweenAnimationBuilder),
            _buildList(context, Constants.W64_ImageFromNetwork, Constants.Initial_Route + Constants.W64_ImageFromNetwork),
            _buildList(context, Constants.W64a_ImageFromGallery, Constants.Initial_Route + Constants.W64a_ImageFromGallery),
            _buildList(context, Constants.W64b_ImageFromCamera, Constants.Initial_Route + Constants.W64b_ImageFromCamera),
            _buildList(context, Constants.W65_DefaultTabController, Constants.Initial_Route + Constants.W65_DefaultTabController),
            _buildList(context, Constants.W66_Drawer, Constants.Initial_Route + Constants.W66_Drawer),
            _buildList(context, Constants.W67_SnackBar, Constants.Initial_Route + Constants.W67_SnackBar),
            _buildList(context, Constants.W68_ListWheelScrollView, Constants.Initial_Route + Constants.W68_ListWheelScrollView),
            _buildList(context, Constants.W69_ShaderMask, Constants.Initial_Route + Constants.W69_ShaderMask),
            _buildList(context, Constants.W70_NotificationListener, Constants.Initial_Route + Constants.W70_NotificationListener),
            _buildList(context, Constants.W71_ClipPath, Constants.Initial_Route + Constants.W71_ClipPath),
            _buildList(context, Constants.W72_ProgressIndicator, Constants.Initial_Route + Constants.W72_ProgressIndicator),
            _buildList(context, Constants.W73_Divider, Constants.Initial_Route + Constants.W73_Divider),
            _buildList(context, Constants.W74_IgnorePointer, Constants.Initial_Route + Constants.W74_IgnorePointer),
            _buildList(context, Constants.W75_CupertinoActivityIndicator, Constants.Initial_Route + Constants.W75_CupertinoActivityIndicator),
            _buildList(context, Constants.W76_ClipOval, Constants.Initial_Route + Constants.W76_ClipOval),
            _buildList(context, Constants.W76a_ClipOvalAnimated, Constants.Initial_Route + Constants.W76a_ClipOvalAnimated),
            _buildList(context, Constants.W77_AnimatedWidget, Constants.Initial_Route + Constants.W77_AnimatedWidget),
            _buildList(context, Constants.W78_Padding, Constants.Initial_Route + Constants.W78_Padding),
            _buildList(context, Constants.W79_CheckboxListTile, Constants.Initial_Route + Constants.W79_CheckboxListTile),
            _buildList(context, Constants.W80_AboutDialog, Constants.Initial_Route + Constants.W80_AboutDialog),
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
