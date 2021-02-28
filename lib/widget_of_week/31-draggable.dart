import 'package:flutter/material.dart';

//Draggable
//https://www.youtube.com/watch?v=QzA4c4QHZCY&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=32&ab_channel=Flutter

class Widget31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 31 : Draggable & Builder'),
      ),
      body: Builder(
        builder: (context) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  createDraggable(Colors.blue, "blue"),
                  createDraggable(Colors.amber, "amber"),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  createDragTarget(context, Colors.blue, "blue"),
                  createDragTarget(context, Colors.amber, "amber"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget createDraggable(MaterialColor color, String data) => Draggable(
      child: Container(
        height: 100,
        width: 100,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Drag me to my color name",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      feedback: Container(
        height: 100,
        width: 100,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            /// Reason for adding Material widget here is that the
            /// text widget needs material theme otherwise it'll show
            /// two yellow lines beneath itself. We have scaffold in the
            /// widget tree but when the "feedback" widget is floating then
            /// it disconnects with the Scaffold.
            /// Check related issue here : https://github.com/flutter/flutter/issues/30647
            child: Material(
              type: MaterialType.transparency,
              child: Text(
                "I am being dragged",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      childWhenDragging: Container(
        height: 100,
        width: 100,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Original place",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      data: data,
      onDragStarted: () => print("Drag Started"),
      onDragCompleted: () => print("Drag Completed"),
    );

Widget createDragTarget(
        BuildContext context, MaterialColor color, String dataOfDragged) =>
    DragTarget(
      builder: (context, List<String> candidateData, rejectedData) {
        return Container(
          height: 100,
          width: 100,
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Drag block here",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        );
      },
      onWillAccept: (data) {
        if (data == dataOfDragged) {
          return true;
        } else {
          return false;
        }
      },

      /// If the Draggable is dropped onto the DragTarget and onWillAccept returns true, then onAccept is called.
      onAccept: (data) {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Accepted!!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
        ));
      },

      /// If the Draggable is dropped onto the DragTarget and onWillAccept returns false, then onLeave is called.
      onLeave: (data) {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Rejected!!'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
        ));
      },
    );
