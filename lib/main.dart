import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/cookbook/GridList.dart';
import 'package:flutter_app/viewcontrollers/HomePage.dart';
import 'package:flutter_app/vnoc/AtcVnocDashBoardReports.dart';
import 'package:flutter_app/vnoc/SplashScreen.dart';
import 'package:flutter_app/vnoc/Constant.dart';

//void main() => runApp(MyApp());

//void main() => runApp(GridList());
void main() {
  runApp(new MaterialApp(
    title: 'ATC Reports',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        accentColor: Colors.black,
        primaryColor: Color(0xFFffffff),
        primaryColorDark: Color(0xffffff)),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME_SCREEN: (BuildContext context) {
        return new AtcVnocDashBoardReports();
      },
      ANIMATED_SPLASH: (BuildContext context) {
        return new SplashScreen();
      },
    },
  ));
}

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   var _questionIndex = 0;

//   void _answerQuestion() {
//     setState(() {
//       _questionIndex = _questionIndex + 1;
//     });
//     print(_questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var questions = [
//       'What\'s is your favourite colour?',
//       'Whta\'s is your favourite car'
//     ];
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("My First App"),
//         ),
//         body: Column(
//           children: [
//             Question(questions[_questionIndex]),
//            Answer(),
//            Answer(),
//            Answer(),

//           ],
//         ),
//       ),
//     );
//   }
//}
