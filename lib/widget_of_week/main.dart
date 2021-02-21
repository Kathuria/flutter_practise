import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_practise/widget_of_week/1-safearea.dart';
import 'package:flutter_practise/widget_of_week/2-expanded.dart';
import 'package:flutter_practise/widget_of_week/3-wrap.dart';
import 'package:flutter_practise/widget_of_week/4-animated-container.dart';

class WidgetOfWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _random = new Random();
    final widgets = [
      Widget1(), //SafeArea
      Widget2(), //Expanded
      Widget3(), //Wrap
      Widget4(), //AnimatedContainer
    ];
    return widgets[_random.nextInt(widgets.length)];
  }
}
