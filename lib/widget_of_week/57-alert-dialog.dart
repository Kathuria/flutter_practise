import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//AlertDialog
//https://www.youtube.com/watch?v=75CsnyRXf5I&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=59&ab_channel=Flutter

class Widget57 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 57 : Alert Dialog'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  child: Text(
                    "Cupertino"
                  ),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                        title: Text("Accept Changes?"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Choose one"),
                        ),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("No"),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                          CupertinoDialogAction(
                            child: Text("Yes"),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  child: Text(
                    "Cupertino Reject"
                  ),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                        title: Text("Are You Sure?"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Think Again"),
                        ),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("reject", style: TextStyle(color: Colors.red),),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  child: Text(
                    "Cupertino Cutomised"
                  ),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => CupertinoAlertDialog(
                        title: Text("Are You Sure?"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/flutter_engage.png'),
                        ),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text("Lets Start", style: TextStyle(color: Colors.green),),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  child: Text(
                    "Material"
                  ),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) => AlertDialog(
                        elevation: 24.0,
                        backgroundColor: Theme.of(context).canvasColor,
                        title: Text("Accept Changes?"),
                        content: Text("Choose one"),
                        actions: <Widget>[
                          TextButton(
                            child: Text(
                              "No",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                          TextButton(
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  child: Text(
                    "Material Customised"
                  ),
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        elevation: 24.0,
                        backgroundColor: Colors.amber,
                        shape: const StadiumBorder(),
                        title: Text("Accept Changes?"),
                        content: Text("Make our choice"),
                        actions: <Widget>[
                          TextButton(
                            child: Text(
                              "No",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                          TextButton(
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                          ),
                        ],
                      ),
                    ),
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
