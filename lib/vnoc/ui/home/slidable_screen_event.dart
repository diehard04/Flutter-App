import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class slidable_screen_event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableStrechActionPane(),
      actionExtentRatio: 0.35,
      child: new Card(
        child: new Container(
          height: 70.0,
          color: Colors.grey[200],
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.arrow_left),
              new Text(
                "Event Summary",
                style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,),
              ),
              Icon(Icons.arrow_right),
              //const SizedBox(height: 70.0,)
            ],
          ),
        ),
      ),

      actions: <Widget>[
        IconSlideAction(
          closeOnTap: false,
          caption: 'MTD',
          color: Colors.blue[400],
          icon: Icons.calendar_today,
          foregroundColor: Colors.white,
          onTap: () => _showSnackBar(context, 'MTD'),
        ),

        // IconSlideAction(
        //   caption: 'Share',
        //   color: Colors.indigo,
        //   icon: Icons.share,
        //   onTap: () => _showSnackBar(context, 'Share'),
        // ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          closeOnTap: false,
          caption: 'DAY',
          color: Colors.blue[400],
          icon: Icons.calendar_today_outlined,
          foregroundColor: Colors.white,
          onTap: () => _showSnackBar(context, 'DAY'),
        ),
        // IconSlideAction(
        //   caption: 'Delete',
        //   color: Colors.red,
        //   icon: Icons.delete,
        //   onTap: () => _showSnackBar(context, 'Delete'),
        // ),
      ],
    );
  }

  void _showSnackBar(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
