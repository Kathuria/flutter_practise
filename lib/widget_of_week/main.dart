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

class WidgetOfWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _random = new Random();
    final widgets = [
      Widget1(), //SafeArea
      Widget2(), //Expanded
      Widget3(), //Wrap
      Widget4(), //AnimatedContainer
      Widget5(), //Opacity
      Widget5a(), //AnimatedOpacity
      Widget6(), //FutureBuilder
      Widget7(), //FadeTransition
      Widget8(), //FloatingActionButton
      Widget9(), //PageView
      Widget10(), //Table
      Widget11(), //SliverAppBar
    ];
    //return widgets[_random.nextInt(widgets.length)];
    return Widget11();
  }
}
