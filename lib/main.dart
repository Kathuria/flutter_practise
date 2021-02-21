import 'package:flutter/material.dart';

/*For Basic Practise*/
import 'package:flutter_practise/hello-world.dart';
import 'package:flutter_practise/counter.dart';
import 'package:flutter_practise/list-basic.dart';
import 'package:flutter_practise/list-advanced.dart';

/*Rocket_guide App*/
import 'package:flutter_practise/rocket_guide/app/app.dart';
import 'package:flutter_practise/rocket_guide/backend/backend.dart';


void main() {
  final backend = Backend('https://api.spacexdata.com/v4');

  runApp(
    //runApp(HelloFlutter());
    //runApp(Counter());
    //runApp(ListBasic());
    //runApp(ListAdvanced());
    RocketGuideApp(
      backend: backend,
    ),
  );
}

