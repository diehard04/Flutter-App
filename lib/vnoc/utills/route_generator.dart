import 'package:flutter/material.dart';
import 'file:///E:/DEMO/Flutter/Flutter-App/lib/vnoc/ui/about/About.dart';
import 'file:///E:/DEMO/Flutter/Flutter-App/lib/vnoc/ui/home/AtcVNOC.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AtcVNOC.route:
        return MaterialPageRoute(builder: (context) => AtcVNOC());
    }
  }
}
