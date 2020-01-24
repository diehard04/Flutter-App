import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuetion() {
    print('Answer Question!');
  }
  var question = [
    'What\'s is your favourite colour?',
    'Whta\'s is your favourite car'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("The Question"),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuetion(),
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
