import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/cookbook/GridList.dart';
import 'package:flutter_app/viewcontrollers/HomePage.dart';

//void main() => runApp(MyApp());

void main() => runApp(GridList());

import 'package:flutter_app/page_one.dart';
import 'home_page.dart';
import 'page_one.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Roboto",
        iconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),

    return new MaterialApp(

      theme: new ThemeData(
      
        primarySwatch: Colors.purple,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS 
        ? Colors.grey[50]
        :null
      ),
      
      home: new HomePage(),
      // routes: <String, WidgetBuilder> {
      //   "/a" : (BuildContext contet) => new PageOne("Page One"), 
      // }
    );
  }
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
