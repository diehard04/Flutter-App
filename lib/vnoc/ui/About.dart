import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  AboutState createState() {
    return AboutState();
  }
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: new ThemeData(primaryColor: Colors.black),
    );
  }
}
