import 'package:flutter/material.dart';

class About extends StatelessWidget {


  final String pageTextChanged;
  About(this.pageTextChanged);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged),
      ),
    );
  }

}
