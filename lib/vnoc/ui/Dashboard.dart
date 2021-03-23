import 'package:flutter/material.dart';

import '../Constant.dart';

class Dashboard extends StatefulWidget {
  final String title;
  Dashboard({Key key, this.title}) : super(key: key);

  @override
  DashboardState createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
              new Container(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: new Image.asset('assets/images/logo.png'),
                ), color: Color(0xFFf0f0f0),
              ),
            new ListTile(
              leading: new Icon(Icons.home_filled),
              title: new Text('Home'),
              trailing : new Text("96", style: TextStyle(fontWeight: FontWeight.bold),),

              onTap : () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(HOME_SCREEN);
              },
            ),
            new ListTile(
              leading: new Image.asset('assets/images/about.png'),
              title: new Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(HOME_SCREEN);
              },
            )
          ],
        ),
      ),
    );
  }

}