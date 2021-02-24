import 'package:flutter/material.dart';
import 'package:flutter_practise/widget_of_week/10x-containers.dart';

//Table
//https://www.youtube.com/watch?v=_lbE0wsVZSw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=11&pbjreload=101&ab_channel=GoogleDevelopers

class Widget10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('#Widget 10 : Table'),
        ),
        body: Table(
          border: TableBorder.all(),
          //defaultColumnWidth: FixedColumnWidth(100),
          defaultColumnWidth: FractionColumnWidth(.25),
          //defaultColumnWidth: FlexColumnWidth(1),
          //defaultColumnWidth: IntrinsicColumnWidth(),
          columnWidths: {1: FractionColumnWidth(.5)},
          //defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          //defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: [
            TableRow(children: [
              wideWidget(),
              mediumWidget(),
              mediumWidget(),
            ]),
            TableRow(children: [
              mediumWidget(),
              narrowWidget(),
              mediumWidget(),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      color: Colors.amber,
      height: 60,
      width: 60,
    );
  }
}
