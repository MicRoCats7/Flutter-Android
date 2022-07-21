import 'package:flutter/material.dart';

class kalkulator extends StatefulWidget {
  const kalkulator({Key? key}) : super(key: key);

  @override
  State<kalkulator> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<kalkulator> {
  TextEditingController ctrAngka1 = TextEditingController();
  TextEditingController ctrAngka2 = TextEditingController();

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
                      labelText: 'Input Angka1'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrAngka2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input Angka2'
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('+')),
                ElevatedButton(onPressed: () {}, child: Text('-')),
                ElevatedButton(onPressed: () {}, child: Text('*')),
                ElevatedButton(onPressed: () {}, child: Text('/')),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 40),
            child: Text('Hasil'),
            ),
          ],
        ),
      ),
    );
  }
}
