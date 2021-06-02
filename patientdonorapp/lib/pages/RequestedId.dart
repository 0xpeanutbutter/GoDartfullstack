import "package:flutter/material.dart";
import 'package:patientdonorapp/main.dart';

class RequestedUsers extends StatefulWidget {
  @override
  _RequestedUsersState createState() => _RequestedUsersState();
}

class _RequestedUsersState extends State<RequestedUsers> {
  var requestedIds = util.user.requestedId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RequestedId"),
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
              Text("$requestedIds"),
            ],
          ),
        ),
      ),
    );
  }
}
