import 'package:flutter/material.dart';
import "package:patientdonorapp/main.dart";
import 'package:patientdonorapp/protos/data.pbgrpc.dart';

class PendingId extends StatefulWidget {
  @override
  _PendingIdState createState() => _PendingIdState();
}

class _PendingIdState extends State<PendingId> {
  final idController = TextEditingController();

  Future<void> sendAccepted(BuildContext context) async {
    Util newUtil = new Util(uID: util.uID, id: idController.text);
    var data = client.acceptRequest(newUtil);
    print(data);
  }

  Future<void> sendCancelled(BuildContext context) async {
    Util newUtil = new Util(uID: util.uID, id: idController.text);
    var data = client.cancelRequest(newUtil);
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pending ID"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: 300.0,
          height: 300.0,
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
                    sendAccepted(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Accepted"),
                    ));
                    Navigator.pop(context);
                  },
                  child: Text("Accept")),
              SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    sendCancelled(context);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Cancelled"),
                    ));
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
            ],
          ),
        ),
      ),
    );
  }
}
