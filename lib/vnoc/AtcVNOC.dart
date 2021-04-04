import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/ui/Dashboard.dart';
class AtcVNOC extends StatelessWidget {
  static const String routeName = '/';

  final appTitle = 'DASHBOARD';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      theme: new ThemeData(primaryColor: Colors.blue),
      home: Dashboard(title: appTitle),
    );
  }
}
