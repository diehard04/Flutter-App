import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/ui/About.dart';
import 'package:flutter_app/vnoc/ui/AtcVNOC.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AtcVNOC.route:
        return MaterialPageRoute(builder: (context) => AtcVNOC());
    }
  }
}
