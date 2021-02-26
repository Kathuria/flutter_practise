import 'package:flutter/material.dart';

//SliverAppBar
//https://www.youtube.com/watch?v=R9C5KMJKluE&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=12&ab_channel=GoogleDevelopers

class Widget11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const _expandedImage = FlutterLogo();
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('#Widget 11 : Sliver App Bar'),
            snap: true,
            // The property snap can only be set to true,
            // if floating is also true.
            floating: true,
            pinned: true,
            expandedHeight: 200,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              //title: Text('Flexible Spaces'),
              background: _expandedImage,
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                for (var i = 0; i < 6; i++)
                  Container(
                    height: 150,
                    color: i.isEven ? Colors.white : Colors.grey[300],
                    child: Center(
                      child: Text('$i', style: const TextStyle(fontSize: 50)),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
