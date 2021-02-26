import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//FutureBuilder
//https://www.youtube.com/watch?v=ek8ZPdWj4Qo&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=7&ab_channel=GoogleDevelopers

class Widget6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 6 : Future Builder'),
      ),
      body: FutureBuilder<String>(
        future: _getPostTitle(1),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Text('Press button to start.');
            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Text('Awaiting result...');
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              return Text('Result: ${snapshot.data}');
          }
          return null; // unreachable
        },
      ),
    );
  }

  Future<String> _getPostTitle(int id) async {
    final response = await http.get(
      Uri.encodeFull('https://jsonplaceholder.typicode.com/posts/$id'),
      headers: {'Accept': 'application/json'},
    );
    final dynamic data = json.decode(response.body);
    return data['title'].toString();
  }
}
