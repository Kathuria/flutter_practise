import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//hero
//https://www.youtube.com/watch?v=Be9UH1kXFDw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=18&ab_channel=GoogleDevelopers


class Widget17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 17 : Hero'),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/hero_detail');
          },
          child: ClipOval(
            child: Hero(
              tag: 'engage',
              child: Container(
                child: Image.asset('images/flutter_engage.png'),
                height: 100,
              ),
            ),
          ),
        ),
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'engage',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                child: Image.asset('images/flutter_engage.png'),
                height: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}