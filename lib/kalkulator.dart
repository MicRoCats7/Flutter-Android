import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutterkalkulator/listview.dart';

class kalkulator extends StatefulWidget {
  const kalkulator({Key? key}) : super(key: key);

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  TextEditingController ctrAngka1 = TextEditingController();
  TextEditingController ctrAngka2 = TextEditingController();
  int hasil = 0;
  double hasilBagi = 0;
  String hasilString = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kalkulator'),),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrAngka1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                      labelText: 'Angka 1'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrAngka2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Angka 2'
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(onPressed: () {
                  int angka1 = int.parse(ctrAngka1.text);
                  int angka2 = int.parse(ctrAngka2.text);
                  setState((){
                    hasil = angka1 + angka2;
                    hasilString = hasil.toString();
                  });
                }, child: Text('+')),
                FloatingActionButton(onPressed: () {
                  int angka1 = int.parse(ctrAngka1.text);
                  int angka2 = int.parse(ctrAngka2.text);
                  setState((){
                    hasil = angka1 - angka2;
                    hasilString = hasil.toString();
                  });
                  }, child: Text('-')),
                FloatingActionButton(onPressed: () {
                  int angka1 = int.parse(ctrAngka1.text);
                  int angka2 = int.parse(ctrAngka2.text);
                  setState((){
                    hasil = angka1 * angka2;
                    hasilString = hasil.toString();
                  });
                }, child: Text('x')),
                FloatingActionButton(onPressed: () {
                  int angka1 = int.parse(ctrAngka1.text);
                  int angka2 = int.parse(ctrAngka2.text);
                  setState((){
                    hasilBagi = angka1 / angka2;
                    hasilString = hasilBagi.toString();
                  });
                }, child: Text(':')),

              ],
            ),
            Padding(padding: EdgeInsets.only(top: 30),
            child: Text('Hasil = '+hasilString.toString(),
            style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                child: Text('Berikut'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Listview() ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
