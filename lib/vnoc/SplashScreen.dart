import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/Constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  var _visibile = true;
  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this, duration: new Duration(seconds: 3));
    animation = new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() {
      this.setState(() {

      });
    });

    animationController.forward();

    setState(() {
      _visibile = !_visibile;
    });

    startTime();
  }

  @override
  Widget build(BuildContext context) {

  }
}
