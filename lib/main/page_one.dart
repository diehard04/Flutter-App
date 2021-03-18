import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  final String title;

  PageOne(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}
