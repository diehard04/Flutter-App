import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return HorizonatalList();

    final mTitle = 'verticle list';
    MaterialApp(
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
        ));
  }
}

class HorizonatalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final mTitle = 'Horizontal list';

    return MaterialApp(
      title: mTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(mTitle),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          height: 190.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [],
          ),
        ),
      ),
    );
  }
}
