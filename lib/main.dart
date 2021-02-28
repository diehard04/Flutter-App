import 'package:flutter/material.dart';
import 'package:flutter_app/cookbook/GridList.dart';
import 'package:flutter_app/viewcontrollers/HomePage.dart';

//void main() => runApp(MyApp());

void main() => runApp(GridList());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Roboto",
        iconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),

    );
  }
}

