import 'package:flutter/material.dart';

//Expanded
//https://www.youtube.com/watch?v=_rnZaagadyo&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=3&ab_channel=GoogleDevelopers

class Widget2a extends StatefulWidget {
  @override
  _Widget2aState createState() => _Widget2aState();
}

class _Widget2aState extends State<Widget2a> {
  ///Flex factor for 1st widget
  int _flexFactor0 = 1;

  ///Flex factor for 2nd widget
  int _flexFactor1 = 2;

  ///Flex factor for 3rd widget
  int _flexFactor2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 2a : Expanded Interactive'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFFe0e0e0),
              child: Row(
                children: <Widget>[
                  ///First flexible widget
                  Expanded(
                    flex: _flexFactor0,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flexFactor0',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF2196f3),
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () => setState(() {
                          _flexFactor0++;
                        }),
                      ),
                    ),
                  ),

                  ///Second flexible widget
                  Expanded(
                    flex: _flexFactor1,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flexFactor1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF673ab7),
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () => setState(() {
                          _flexFactor1++;
                        }),
                      ),
                    ),
                  ),

                  ///Third flexible widget
                  Expanded(
                    flex: _flexFactor2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flexFactor2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF009688),
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () => setState(() {
                          _flexFactor2++;
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///Click on this button to RESET the values of flex values
            Container(
              margin: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () => setState(() {
                  _flexFactor0 = 1;
                  _flexFactor1 = 2;
                  _flexFactor2 = 1;
                }),
                child: Text('RESET'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}