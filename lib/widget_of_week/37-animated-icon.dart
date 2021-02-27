import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Inherited-Widget
//https://www.youtube.com/watch?v=1t-8rBCGBYw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=37&ab_channel=Flutter

class Widget37 extends StatefulWidget {
  @override
  _Widget37State createState() => _Widget37State();
}

class _Widget37State extends State<Widget37> with TickerProviderStateMixin {
  AnimationController _controller1;
  String speedFabText = "Slowly";

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 37 : Animated Icon'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            /// First row
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: animatedIconRow(_controller1, AnimatedIcons.add_event,
                  AnimatedIcons.arrow_menu, AnimatedIcons.close_menu),
            ),

            /// Second row
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: animatedIconRow(
                  _controller1,
                  AnimatedIcons.ellipsis_search,
                  AnimatedIcons.event_add,
                  AnimatedIcons.home_menu),
            ),

            /// Third row
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: animatedIconRow(_controller1, AnimatedIcons.list_view,
                  AnimatedIcons.menu_arrow, AnimatedIcons.menu_close),
            ),

            /// Fourth row
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: animatedIconRow(_controller1, AnimatedIcons.menu_home,
                  AnimatedIcons.pause_play, AnimatedIcons.play_pause),
            ),

            /// Fifth row
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AnimatedIcon(
                    size: 34.0,
                    icon: AnimatedIcons.search_ellipsis,
                    progress: _controller1,
                  ),
                  AnimatedIcon(
                    size: 34.0,
                    icon: AnimatedIcons.view_list,
                    progress: _controller1,
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24.0),

                    /// Fab to control animation direction
                    child: FloatingActionButton.extended(
                      heroTag: "direction",
                      backgroundColor: Colors.green,
                      onPressed: () => setState(() {
                        _controller1.forward();
                        _controller1.status == AnimationStatus.completed
                            ? _controller1.reverse()
                            : _controller1.forward();
                      }),
                      icon: Icon(
                        Icons.movie_filter,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Animate",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 24.0),

                    /// Fab to control animation speed
                    child: FloatingActionButton.extended(
                      heroTag: "speed",
                      backgroundColor: Colors.white,
                      onPressed: () => setState(() {
                        _controller1.duration.inSeconds == 2
                            ? _controller1.duration =
                                const Duration(seconds: 10)
                            : _controller1.duration =
                                const Duration(seconds: 2);

                        _controller1.duration.inSeconds == 2
                            ? speedFabText = "Slowly"
                            : speedFabText = "Normal";
                      }),
                      icon: Icon(
                        Icons.slow_motion_video,
                        color: Colors.black,
                      ),
                      label: Text(
                        speedFabText,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }
}

Widget animatedIconRow(AnimationController controller, AnimatedIconData icon1,
        AnimatedIconData icon2, AnimatedIconData icon3) =>
    Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AnimatedIcon(
          size: 34.0,
          icon: icon1,
          progress: controller,
        ),
        AnimatedIcon(
          size: 34.0,
          icon: icon2,
          progress: controller,
        ),
        AnimatedIcon(
          size: 34.0,
          icon: icon3,
          progress: controller,
        ),
      ],
    );
