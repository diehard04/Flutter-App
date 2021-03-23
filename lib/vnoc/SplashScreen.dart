import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/Constant.dart';
import 'package:flutter_app/vnoc/utills/Global.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AtcVnocDashBoardReports.dart';
import 'Constant.dart';
import 'login/Login.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visibile = true;
  AnimationController animationController;
  Animation<double> animation;
  var _token;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    //Navigator.of(context).pushReplacementNamed(LOGIN);
    if(_token ==null) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Login()),
          ModalRoute.withName("/SplashScreen")
      );
    } else {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> AtcVnocDashBoardReports()),
          ModalRoute.withName("/SplashScreen")
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _loadSharePref();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 3));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() {
      this.setState(() {});
    });

    animationController.forward();

    setState(() {
      _visibile = !_visibile;
    });
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
              Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: new Image.asset(
                    'assets/images/powered_by.png',
                    height: 25.0,
                    fit: BoxFit.scaleDown,
                  ))
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/images/logo.png',
                width: animation.value * 250,
                height: animation.value * 250,
              )
            ],
          )
        ],
      ),
    );
  }

  void _loadSharePref() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _token = sharedPreferences.getString('token');
    setState(() {
      startTime();
    });
  }
}
