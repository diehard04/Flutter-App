import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/AtcVNOC.dart';
import 'package:flutter_app/vnoc/ui/About.dart';

class Dashboard extends StatefulWidget {
  final String title = "dashboard";
  Dashboard({Key key}) : super(key: key);

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
              leading: new Icon(Icons.home),
              title: new Text('Home'),
              trailing : new Text("96", style: TextStyle(fontWeight: FontWeight.bold),),

              onTap : () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AtcVNOC("Dash Board")));
              },
            ),
            new ListTile(
              leading: new Image.asset('assets/images/about.png'),
              title: new Text('About'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => About("About")));
              },
            )
          ],
        ),
      ),
    );
  }

}