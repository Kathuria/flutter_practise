import 'package:flutter/material.dart';

//ConstrainedBox
//https://www.youtube.com/watch?v=o2KveVr7adg&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=49&ab_channel=Flutter

class Widget48 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 48 : Constrained Box'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Stack(
            children: <Widget>[
              ConstrainedBox(
                constraints: const BoxConstraints.expand(),
                child: const Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'This card fill the parent because of BoxConstraints.expand()',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                              minHeight: 100, maxWidth: 100),
                          child: const Card(
                            color: Colors.yellow,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'This card has BoxConstraints(minHeight: 100, maxWidth: 100). So the text will not be'
                                ' clipped even if more characters are added..........',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxHeight: 100, maxWidth: 200),
                          child: const Card(
                            color: Colors.amber,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'This card has BoxConstraints(maxHeight: 100, maxWidth: 200). So the text will be'
                                ' clipped after a few characters..........',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightForFinite(
                              width: 200, height: double.infinity),
                          child: const Card(
                            color: Colors.orange,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'This card has BoxConstraints.tightForFinite(width: 100, height: double.infinity)'
                                ' So the text will keep flowing vertically even if more characters are added.',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
