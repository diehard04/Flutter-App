import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/cookbook/GridList.dart';
import 'package:flutter_app/viewcontrollers/HomePage.dart';
import 'package:flutter_app/vnoc/ui/AtcVNOC.dart';
import 'package:flutter_app/vnoc/ui/SplashScreen.dart';

//void main() => runApp(MyApp());

//void main() => runApp(GridList());
void main() {
  runApp(new MaterialApp(
    title: 'ATC Reports',
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
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
