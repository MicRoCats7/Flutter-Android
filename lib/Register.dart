import 'package:flutter/material.dart';
import 'package:flutterkalkulator/kalkulator.dart';
import 'package:flutterkalkulator/InputPhone.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {

  TextEditingController ctrUsername = TextEditingController();
  TextEditingController ctrNama = TextEditingController();
  String phoneNumber = "000";

  Widget txtInput(TextEditingController controller, String username,){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: username
      ),
    );
  }

  Widget btnRegister(String btnSubmit){
    return Container(
      width: 125,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => kalkulator()));
        },
        child: Text (btnSubmit),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registrasi"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            txtInput(ctrUsername, "Username"),
            SizedBox(height: 10,),
            txtInput(ctrNama, "Nama"),
            SizedBox(
              height: 20,
            ),
              Row(
                children: [
                  Text(phoneNumber == "" ? "Invalid Number" : "Phone Number : $phoneNumber"),
                  SizedBox(width: 20,),
                  ElevatedButton(
                      onPressed: () async{
                        final result = await Navigator.push(context,
                            MaterialPageRoute(builder: (context) => InputPhone()),
                        );
                        setState(() {
                          phoneNumber = result.toString();
                        });
                      },
                    child: Text("Input Phone"),
                  )
                ],
              ),
            btnRegister("Submit")
          ],
        ),
      ),
    );
  }
}
