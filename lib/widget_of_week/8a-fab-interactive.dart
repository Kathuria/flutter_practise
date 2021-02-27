import 'package:flutter/material.dart';

//FloatingActionButton
//https://www.youtube.com/watch?v=2uaoEDOgk_I&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=9&ab_channel=GoogleDevelopers

class Widget8a extends StatefulWidget {
  @override
  _Widget8aState createState() => _Widget8aState();
}

class _Widget8aState extends State<Widget8a> {
  bool _isMini = false;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;

  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('#Widget 8a : FAB Interactive'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 24),
            child: Center(
              child: Text(
                'Select Fab Size',
                style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(18),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _OptionItem(false, _isMini, _onSizeChange, 'Normal'),
                  _OptionItem(true, _isMini, _onSizeChange, 'Mini'),
                ],
              ),
            ),
          ),
          divider(context),

          Container(
            margin: EdgeInsets.only(top: 24),
            child: Center(
              child: Text(
                'Select Fab Position',
                style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),

          ///Container containing all the Radio buttons
          Container(
            margin: EdgeInsets.all(18),
            child: Center(
              child: Wrap(
                children: <Widget>[
                  _OptionItem(FloatingActionButtonLocation.startDocked,
                      _fabLocation, _onLocationChanged, 'Start (Docked)'),
                  _OptionItem(FloatingActionButtonLocation.centerDocked,
                      _fabLocation, _onLocationChanged, 'End (Docked)'),
                  _OptionItem(FloatingActionButtonLocation.endDocked,
                      _fabLocation, _onLocationChanged, 'Center (Docked)'),
                  _OptionItem(FloatingActionButtonLocation.startFloat,
                      _fabLocation, _onLocationChanged, 'Start (Float)'),
                  _OptionItem(FloatingActionButtonLocation.centerFloat,
                      _fabLocation, _onLocationChanged, 'Center (Float)'),
                  _OptionItem(FloatingActionButtonLocation.endFloat,
                      _fabLocation, _onLocationChanged, 'End (Float)'),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _scaffoldKey.currentState
            .showSnackBar(SnackBar(content: Text("You clicked on the FAB"))),
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
        elevation: 2.0,
        mini: _isMini,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: _fabLocation,
    );
  }

  ///method called whenever a radio button is clicked on to change position
  _onLocationChanged(FloatingActionButtonLocation value) => setState(() {
        _fabLocation = value;
      });

  ///method called whenever you want to change size
  _onSizeChange(bool value) => setState(() {
        _isMini = value;
      });
}

/// Class to create an option for the user to select for any <T> type.
/// Value -> The value that the radio button will set when it is clicked
/// Group value -> A value common to a group of radio buttons that is related to the
/// kind of values that each group member can set eg a boolean value or a
/// FloatingActionButtonLocation value etc.
/// onChanged -> the method that is to be called when clicked on a radio button
///
/// When the Group value and Value of a Radio button is same, that radio button
/// is marked as Selected
class _OptionItem<T> extends StatelessWidget {
  const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);

  final String title;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio<T>(
            value: value,
            groupValue: groupValue,
            activeColor: Colors.lightBlue,
            onChanged: onChanged),
        GestureDetector(
          onTap: () {
            onChanged(value);
          },
          child: Text(title),
        ),
      ],
    );
  }
}

Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
    );
