import 'package:flutter/material.dart';
import 'file:///E:/DEMO/Flutter/Flutter-App/lib/vnoc/ui/about/About.dart';
import 'file:///E:/DEMO/Flutter/Flutter-App/lib/vnoc/ui/home/AtcVNOC.dart';

import 'expention/expansion_pannel_demo.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();

}

class _DashboardState extends State<Dashboard> {
  int index = 0;
  List<Widget> list = [
    AtcVNOC(),
    About(),
    ExpansionPanelDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer(onTap: (lol, i) {
          setState(() {
            index = i;
            Navigator.pop(lol);
          });
        }),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;

  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.8,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("developerszn@gmail.com"),
                accountName: Text("ZN-Developers-SAHQ"),
                currentAccountPicture: CircleAvatar(
                  // child: Text("DP"),
                  child: Image(
                      image: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C510BAQFllNDEzJ0Bpg/company-logo_100_100/0?e=1605139200&v=beta&t=6q99Yq0kJVHvRQRARAmBB40RY-ndxUaAI8c-bcx6uno')),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Random Title 1"),
                onTap: () => onTap(context, 0),
              ),
              ListTile(
                leading: Icon(Icons.pages),
                title: Text("Random Title 2"),
                onTap: () => onTap(context, 1),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
                onTap: () => onTap(context, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}