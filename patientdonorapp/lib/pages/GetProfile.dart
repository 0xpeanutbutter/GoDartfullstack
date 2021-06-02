import 'package:flutter/material.dart';
import "package:patientdonorapp/pages/GetUser.dart";

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String type = newuser.userType;
  String name = newuser.name;
  String mail = newuser.email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          SizedBox(height: 40.0),
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
            radius: 80,
            child: Text(
              "${name[0]}",
              style: TextStyle(fontSize: 55, color: Colors.white),
            ),
          ),
          SizedBox(height: 20.0),
          Text(name),
          SizedBox(height: 20.0),
          Text(mail),
          SizedBox(height: 150.0),
          Text(
            "Usertype : $type",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20.0),
          Text(
            "Mail : $mail",
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
    );
  }
}
