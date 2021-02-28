import 'package:flutter/material.dart';

//ShaderMask
//https://www.youtube.com/watch?v=7sUL66pTQ7Q&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=71&ab_channel=Flutter

class Widget69 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#Widget 69 : Shader Mask'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.purple,
                  ],
                ).createShader(bounds);
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Icon(
              Icons.perm_identity,
              color: Colors.white,
              size: 150,
            ),
          ],
        ),
      ),
    );
  }
}