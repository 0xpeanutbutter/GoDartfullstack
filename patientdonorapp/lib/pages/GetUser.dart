import "package:flutter/material.dart";
import "package:patientdonorapp/main.dart";
import 'package:patientdonorapp/protos/data.pbgrpc.dart';
import "package:patientdonorapp/pages/GetProfile.dart";

User newuser = new User();

class GetUser extends StatefulWidget {
  @override
  _GetUserState createState() => _GetUserState();
}

class _GetUserState extends State<GetUser> {
  final idController = TextEditingController();

  Future<void> sendgetuser(BuildContext context) async {
    Util newUtil = new Util(uID: util.uID, id: idController.text);
    User data = await client.getUser(newUtil);
    newuser = data;
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Edit User details"),
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
                    sendgetuser(context).then((value) => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile())),
                        });
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
