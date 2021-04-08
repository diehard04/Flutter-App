import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/ui/Dashboard.dart';
class AtcVNOC extends StatelessWidget {
  final String pageTextChanged;
  AtcVNOC(this.pageTextChanged);


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
