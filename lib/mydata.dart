import 'package:flutter/material.dart';
import 'package:flutterkalkulator/listview.dart';
class MyData extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Data"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Text("Nama Saya $routeArgs"),
      ),
    );
  }
}