import 'package:flutter/material.dart';

//Semantics
//https://www.youtube.com/watch?v=NvtMt_DtFrQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=48&ab_channel=Flutter

class Widget47 extends StatelessWidget {
  final String name = 'flutter_engage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 47 : Semantics'),
      ),
      //On Body Can use ExcludeSemantics or MergeSemantics like (child: Semantics(...))
      body: Semantics(
        child: FaceImage(
          file: '$name.png',
        ),
        label: 'An image of $name',
        enabled: true,
        readOnly: true,
      ),
    );
  }
}

class FaceImage extends StatelessWidget {
  const FaceImage({Key key, this.file}) : super(key: key);

  final String file;

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/$file');
  }
}
