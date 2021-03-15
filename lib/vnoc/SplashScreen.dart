import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/Constant.dart';
import 'file:///E:/DEMO/Flutter-App/lib/vnoc/login/Login.dart';
import 'Constant.dart';

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
    //Navigator.of(context).pushReplacementNamed(LOGIN);
    Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>
        new Login())
    );
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
      return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(bottom: 30.0),
                    child: new Image.asset('assets/images/powered_by.png', height: 25.0, fit: BoxFit.scaleDown,)
                  )
                ],
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image.asset('assets/images/logo.png',
                    width: animation.value * 250,
                    height: animation.value * 250,)
                ],
              )
            ],
          ),
      );
  }
}