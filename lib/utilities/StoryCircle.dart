import 'package:flutter/material.dart';
import 'package:dashed_circle/dashed_circle.dart';

class StoryCircle extends StatefulWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  _StoryCircleState createState() => _StoryCircleState();
}

class _StoryCircleState extends State<StoryCircle>
    with SingleTickerProviderStateMixin {
  late Animation<double> gap;
  late Animation<double> base;
  late Animation<double> reverse;
  late AnimationController controller;

  /// Init
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  /// Dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /// Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: RotationTransition(
          turns: base,
          child: DashedCircle(
            gapSize: gap.value,
            dashes: 40,
            color: const Color(0XFFED4634),
            child: RotationTransition(
              turns: reverse,
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/img/facebook-logo.png"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
