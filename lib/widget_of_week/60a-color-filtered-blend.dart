import 'package:flutter/material.dart';

//colorFiltered
//https://www.youtube.com/watch?v=F7Cll22Dno8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=62&ab_channel=Flutter

class Widget60a extends StatefulWidget {
  @override
  _Widget60aState createState() => _Widget60aState();
}

class _Widget60aState extends State<Widget60a> {
  var _blendmode = BlendMode.darken;
  var _blendmode1 = BlendMode.softLight;
  var _blendmode2 = BlendMode.colorBurn;
  var _blendmode3 = BlendMode.difference;
  var _blendmode4 = BlendMode.multiply;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 60a : Color Filtered Blend'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(18),
              child: Center(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.grey, _blendmode),
                  child: Image.asset('images/flutter_engage.png'),
                ),
              ),
            ),
            divider(context),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Wrap(
                children: <Widget>[
                  _OptionItem(_blendmode1, _blendmode, _onBlendModeChanged,
                      'BlendMode.softLight'),
                  _OptionItem(_blendmode2, _blendmode, _onBlendModeChanged,
                      'BlendMode.colorBurn'),
                  _OptionItem(_blendmode3, _blendmode, _onBlendModeChanged,
                      'BlendMode.difference'),
                  _OptionItem(_blendmode4, _blendmode, _onBlendModeChanged,
                      'BlendMode.multiply'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _onBlendModeChanged(BlendMode blendMode) => setState(() {
        _blendmode = blendMode;
      });
}

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
          child: Text(
            title,
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      ],
    );
  }
}

Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 14),
    );
