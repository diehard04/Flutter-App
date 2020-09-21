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
                        child: MaterialButton(
                          height: 100.0,
                          minWidth: 150.0,
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: new Text("Profile"),
                          // onPressed: () => {
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(builder: (context) => Profile()),
                          // )
                          // },
                          splashColor: Colors.redAccent,
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: new MaterialButton(
                          height: 100.0,
                          minWidth: 150.0,
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: new Text("Menu"),
                          // onPressed: () => {
                          // Navigator.push(
                          // context,
                          // MaterialPageRoute(builder: (context) => Menu()),
                          // )
                          // },
                          splashColor: Colors.redAccent,
                        )
                    ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     Padding(
                //         padding: EdgeInsets.all(20.0),
                //         child: new MaterialButton(
                //           height: 100.0,
                //           minWidth: 150.0,
                //           color: Theme.of(context).primaryColorDark,
                //           textColor: Colors.white,
                //           child: new Text("Settings"),
                //           // onPressed: () => {
                //           // Navigator.push(
                //           // context,
                //           // MaterialPageRoute(builder: (context) => Settings()),
                //           // )
                //           // },
                //           splashColor: Colors.redAccent,
                //         )),
                //     Padding(
                //         padding: EdgeInsets.all(20.0),
                //         child: new MaterialButton(
                //           height: 100.0,
                //           minWidth: 150.0,
                //           color: Theme.of(context).primaryColor,
                //           textColor: Colors.white,
                //           child: new Text("About"),
                //           // onPressed: () => {
                //           // Navigator.push(
                //           // context,
                //           // MaterialPageRoute(builder: (context) => About()),
                //           // )
                //           // },
                //           splashColor: Colors.redAccent,
                //         )),
                //   ],
                // ),
      
              ],
            )

        ),
    );
  }
}