import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/gestures.dart';

//CheckboxListTile
//https://www.youtube.com/watch?v=RkSqPAn9szs&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=82&ab_channel=Flutter

class Widget79 extends StatefulWidget {
  @override
  _Widget79State createState() => _Widget79State();
}

class _Widget79State extends State<Widget79> {
  bool _isSelected = false;
  bool _isLabelSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 79 : Checkbox List Tile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(),
          CheckItem(ListTileControlAffinity.platform),
          CheckItem(ListTileControlAffinity.leading),
          CheckItem(ListTileControlAffinity.trailing),
          Divider(),
          CheckAnimate(),
          Divider(),
          LinkedLabelCheckbox(
            label: 'Linked, tappable label text',
            padding: const EdgeInsets.symmetric(horizontal: 20),
            value: _isSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isSelected = newValue;
              });
            },
          ),
          Divider(),
          LabeledCheckbox(
            label: 'This is the label text',
            padding: const EdgeInsets.symmetric(horizontal: 20),
            value: _isLabelSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isLabelSelected = newValue;
              });
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}

class CheckItem extends StatefulWidget {
  const CheckItem(this.affinity);

  final ListTileControlAffinity affinity;

  @override
  _CheckItemState createState() => _CheckItemState();
}

class _CheckItemState extends State<CheckItem> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.affinity.toString()),
      secondary: const Icon(Icons.beach_access),
      controlAffinity: widget.affinity,
      value: _checked,
      onChanged: (bool value) {
        setState(() {
          _checked = value;
        });
      },
      activeColor: Colors.green,
      checkColor: Colors.black,
    );
  }
}

class CheckAnimate extends StatefulWidget {
  const CheckAnimate();

  @override
  _CheckAnimateState createState() => _CheckAnimateState();
}

class _CheckAnimateState extends State<CheckAnimate> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Animate Slowly'),
      value: timeDilation != 1.0,
      onChanged: (bool value) {
        setState(() {
          timeDilation = value ? 10.0 : 1.0;
        });
      },
      secondary: const Icon(Icons.hourglass_empty),
    );
  }
}

class LinkedLabelCheckbox extends StatelessWidget {
  const LinkedLabelCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: <Widget>[
          Expanded(
            child: RichText(
              text: TextSpan(
                text: label,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Label has been tapped.');
                  },
              ),
            ),
          ),
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
