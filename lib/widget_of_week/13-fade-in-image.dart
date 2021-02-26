import 'package:flutter_practise/widget_of_week/13a-asset-network.dart';
import 'package:flutter_practise/widget_of_week/13b-fade-in-curve.dart';
import 'package:flutter_practise/widget_of_week/13c-fade-in-duration.dart';
import 'package:flutter_practise/widget_of_week/13d-memory-network.dart';
import 'package:flutter/material.dart';

//Fade in image
//https://www.youtube.com/watch?v=pK738Pg9cxc&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=14&ab_channel=GoogleDevelopers


class Widget13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/fade-in-image',
      routes: {
        '/fade-in-image': (context) => MyFadePage(),
        '/fade-in-image/memory_network': (context) => MemoryNetworkPage(),
        '/fade-in-image/asset_network': (context) => AssetNetworkPage(),
        '/fade-in-image/fade_in_duration': (context) => FadeInDurationPage(),
        '/fade-in-image/fade_in_curve': (context) => FadeInCurvePage(),
      },
    );
  }
}

class MyFadePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 13 : Fade in Image'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'FadeInImage.memoryNetwork()', '/fade-in-image/memory_network'),
            _buildList(context, 'FadeInImage.assetNetwork()', '/fade-in-image/asset_network'),
            _buildList(context, 'FadeInDuration', '/fade-in-image/fade_in_duration'),
            _buildList(context, 'FadeInCurve', '/fade-in-image/fade_in_curve'),
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