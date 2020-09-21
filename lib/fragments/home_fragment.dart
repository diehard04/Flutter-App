import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: RaisedButton(
                          child: Text('Color Changed'),
                          color: Colors.green,
                          onPressed: () {},
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Material(
                           shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                            elevation: 18.0,
                            color: Color(0xFF801E48),
                            clipBehavior: Clip.antiAlias, // Add This
                            child: MaterialButton(
                            minWidth: 100.0,
                            height: 35,
                            color: Color(0xFF801E48),
                            child: new Text('Preciso de ajuda',
                            style: new TextStyle(fontSize: 16.0, color: Colors.white)),
                            onPressed: () {

                              },
                            ),

                        )
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: new MaterialButton(
                          height: 100.0,
                          minWidth: 150.0,
                          color: Theme.of(context).primaryColorDark,
                          textColor: Colors.white,
                          child: new Text("Settings"),
                          // onPressed: () => {
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(builder: (context) => Settings()),
                          // )
                          // },
                          splashColor: Colors.redAccent,
                        )),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: new MaterialButton(
                          height: 100.0,
                          minWidth: 150.0,
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: new Text("About"),
                          // onPressed: () => {
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(builder: (context) => About()),
                          // )
                          // },
                          splashColor: Colors.redAccent,
                        )),
                  ],
                ),
      
              ],
            )

        ),
    );
  }
}