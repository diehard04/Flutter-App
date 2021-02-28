import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    final mTitle = '';
    return MaterialApp(
      title: mTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(mTitle),
        ),

        body: GridView.count(
            crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item.$index',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      )
    );
  }

}