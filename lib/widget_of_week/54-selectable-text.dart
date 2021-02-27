import 'package:flutter/material.dart';

//SelectableText
//https://www.youtube.com/watch?v=ZSU3ZXOs6hc&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=56&ab_channel=Flutter

class Widget54 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 54 : Selectable Text'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
              child: Image.asset('images/flutter_engage.png'),
              height: 200,
              width: 200,
            ),

            /// Selectable text
            Container(
              margin: EdgeInsets.all(24.0),
              child: SelectableText(
                "Long press to select this text and you will get option to Select All as well.",
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),

            /// A text field to let user paste the copied text
            Container(
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              margin: EdgeInsets.only(left: 24.0, right: 24.0),
              child: TextField(
                style: TextStyle(color: Colors.amber),
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey[100]),
                  hintText: 'Copy the text above and paste it here.',
                  prefixIcon: Icon(
                    Icons.content_paste,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
                cursorColor: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
