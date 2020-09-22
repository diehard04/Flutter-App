import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),

          child: Column(

            children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                  children: <Widget>[
                    new Container(
                        margin: const EdgeInsets.only(left :10.0),
                        child:  Text( "Last Refreshed: "),
                    ),
                      new Container(
                        margin: const EdgeInsets.only(left :10.0),
                        child:  Text("22 - 09 2020"),
                    ), 
                  ],
                ),

                Expanded(child:
                    GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    padding: EdgeInsets.all(3.0),
                    children: <Widget> [
                      makeDashboardItem("Emergency", Icons.alarm, Colors.red),
                      makeDashboardItem("Critical", Icons.alarm, Colors.redAccent[200]),
                      makeDashboardItem("Major", Icons.alarm, Colors.yellow[700]),
                      makeDashboardItem("Minor", Icons.alarm, Colors.yellow),
                      makeDashboardItem("Planned", Icons.alarm, Colors.lightBlue[400]),
                      makeDashboardItem("Normal", Icons.alarm, Colors.green[400])

                    ],
                  ),
                )
            ],
          ),
        
        ),
    );
  }

  Material makeDashboardItem(String title, IconData icon, var c) {
    return Material(
        elevation: 14.0,
        shadowColor: Colors.amber,
        borderRadius: BorderRadius.circular(24.0),
        child: Container(
          decoration: BoxDecoration(
            color: c,
            borderRadius: BorderRadius.circular(24.0)
            ),
          padding: const EdgeInsets.all(10.0),
          child: new InkWell(
            onTap: () {
                print("title " + title);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,

              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                  child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                new Center(
                  child: new Text(title,
                      style: new TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}