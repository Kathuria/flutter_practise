import 'package:flutter/material.dart';

//Data Table
//https://www.youtube.com/watch?v=ZSU3ZXOs6hc&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=56&ab_channel=Flutter

class Widget55a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 55a : Data Table Features'),
      ),
      body: DataTable(
        sortColumnIndex: 0,
        sortAscending: true,
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Year'), numeric: true,),
        ],
        rows: const <DataRow>[
          DataRow(cells: [
            DataCell(
              Text('Fill in name'),
              placeholder: true,
            ),
            DataCell(Text('2013')),
          ]),
          DataRow(selected: true, cells: [
            DataCell(Text('Gopher')),
            DataCell(Text('2009')),
          ]),
          DataRow(cells: [
            DataCell(Text('Avi'), showEditIcon: true),
            DataCell(Text('2021')),
          ]),
        ],
      ),
    );
  }
}
