import 'package:flutter/material.dart';
class AtcVNOC extends StatefulWidget {

  static const String route = "/AtcVNOC";

  @override
  _ATCTVNOCState createState() => _ATCTVNOCState();

}

class _ATCTVNOCState extends State<AtcVNOC>{

  var heigh, widht;
  bool showList = false;
  PageController pageController;
  int currentPage =0;
  ValueNotifier<bool> isFadeAway = ValueNotifier(false);
  bool allowChangingValue = true;
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    pageController = new PageController()
  }

  @override
  Widget build(BuildContext context) {


  }


}
