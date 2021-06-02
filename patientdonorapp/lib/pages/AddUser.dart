import 'package:flutter/material.dart';
import "package:patientdonorapp/main.dart";
import 'package:patientdonorapp/protos/data.pbgrpc.dart';

class AddUser extends StatefulWidget {
  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final idController = TextEditingController();

  Future<void> sendAddUser(BuildContext context) async {
    Util newUtil = new Util(uID: util.uID, id: idController.text);
    var data = await client.sendRequest(newUtil);
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add user details"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: 300.0,
          height: 270.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              Text("Enter ID"),
              SizedBox(height: 20.0),
              TextFormField(
                  controller: idController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(labelText: "ID")),
              SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    sendAddUser(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Added"),
                    ));
                    Navigator.pop(context);
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
