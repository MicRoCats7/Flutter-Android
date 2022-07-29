import 'package:flutter/material.dart';
import 'package:flutterkalkulator/mydata.dart';

class Listview extends StatefulWidget {
  @override
  _ListviewState createState() => _ListviewState();
}
class _ListviewState extends State<Listview> {
  List<String> notes = [
    "Amri",
    "Akbar",
    "Alwan",
    "Danar",
    "Wira",
    "Bimo",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nama temen-temen Amri"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context,pos){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyData(),
                    settings: RouteSettings(

                      arguments: notes[pos],
                    ),
                  ),
                );
              },
              child: Card(
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(notes[pos],style:  TextStyle(
                    fontSize: 18.0,
                    height: 2,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            );
          }
      ),
    );
  }
}