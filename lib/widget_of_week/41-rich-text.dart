import 'package:flutter/material.dart';

//RichText
//https://www.youtube.com/watch?v=rykDVh-QFfw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=42&ab_channel=Flutter

class Widget41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 41 : Rich Text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: RichText(
          text: TextSpan(
            /// A default style for all the TextSpans below.
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
              color: Theme.of(context).backgroundColor,
              height: 1.5,
            ),
            children: <TextSpan>[
              TextSpan(text: "This is a normal text "),
              TextSpan(
                text: "which suddenly switches to a bold text ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              TextSpan(
                text:
                    "which is now italic as well. But what if it was colored ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0),
              ),
              TextSpan(
                text: "like this text. ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    fontSize: 14.0),
              ),
              TextSpan(
                text: "Might as well underline it.\n",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 14.0),
              ),
              TextSpan(
                text:
                    "Let us now increase the font size so that you can read it properly.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 18.0),
              ),
              TextSpan(
                text: "\n\nI wonder what more can we do before ending this. ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 18.0),
              ),
              TextSpan(
                text:
                    "Oh yes, Let's give this text a background color to highlight it",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    backgroundColor: Colors.yellowAccent,
                    fontSize: 18.0),
              ),
              TextSpan(
                text: "\n\nOne more thing, You can add ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    fontSize: 18.0),
              ),
              TextSpan(
                text: "links",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                    fontSize: 18.0),
              ),
              TextSpan(
                text: " as well",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
