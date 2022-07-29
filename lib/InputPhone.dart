import 'package:flutter/material.dart';

class InputPhone extends StatefulWidget {
  const InputPhone({Key? key}) : super(key: key);

  @override
  State<InputPhone> createState() => _InputPhoneState();
}

class _InputPhoneState extends State<InputPhone> {
  TextEditingController ctrPhone = new TextEditingController();
  TextEditingController ctrPhoneNumber = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Phone"),),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: ctrPhoneNumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone Number",
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, ctrPhoneNumber.text);
            },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
