import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo.shade200, Colors.blueGrey.shade100],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
        ),
        Bird(),
      ],
    );
  }
}

class Bird extends StatelessWidget {
  const Bird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        //Container(child: Image(image: AssetImage('assets/img2.png'))),
        Animated(),
        Container(child: Image(image: AssetImage('assets/img1.png'))),
      ]),
    );
  }
}

class Animated extends StatefulWidget {
  const Animated({Key? key}) : super(key: key);

  @override
  _AnimatedState createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation =
      (Tween(begin: Offset.zero, end: Offset(0, 0.08)))
          .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 4), vsync: this)
          ..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SlideTransition(
            position: _animation,
            child: Image.asset(
              'assets/img2.png',
              scale: 1.3,
            )),
      ],
    );
  }
}