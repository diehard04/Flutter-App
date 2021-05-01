import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/ui/home/slidable_screen_event.dart';

class AtcVNOC extends StatefulWidget {
  static const String route = "/AtcVNOC";

  @override
  _ATCTVNOCState createState() => _ATCTVNOCState();
}

class _ATCTVNOCState extends State<AtcVNOC> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      //alignment: Alignment.center,
      padding: new EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      //decoration: new BoxDecoration(color: Colors.blue),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          slidable_screen_event(),
          new Card(
            child: new Container(
              height: 70.0,
              color: Colors.grey[200],
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_left),
                  new Text(
                    "Infra & Outage Summary",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Icon(Icons.arrow_right),
                  //const SizedBox(height: 70.0,)
                ],
              ),
            ),
          ),
          new Card(
            child: new Container(
              height: 70.0,
              color: Colors.grey[200],
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_left),
                  new Text(
                    "Uptime Summary",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Icon(Icons.arrow_right),
                  //const SizedBox(height: 70.0,)
                ],
              ),
            ),
          ),new Card(
            child: new Container(
              height: 70.0,
              color: Colors.grey[200],
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_left),
                  new Text(
                    "Escalation Summary",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Icon(Icons.arrow_right),
                  //const SizedBox(height: 70.0,)
                ],
              ),
            ),
          ),
          new Card(
            child: new Container(
              height: 70.0,
              color: Colors.grey[200],
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_left),
                  new Text(
                    "Frequently Fail Summary",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Icon(Icons.arrow_right),
                  //const SizedBox(height: 70.0,)
                ],
              ),
            ),
          ),new Card(
            child: new Container(
              height: 70.0,
              color: Colors.grey[200],
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.arrow_left),
                  new Text(
                    "Alarm Compliance",
                    style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Icon(Icons.arrow_right),
                  //const SizedBox(height: 70.0,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
