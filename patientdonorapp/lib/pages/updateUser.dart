import "package:flutter/material.dart";
import "package:patientdonorapp/main.dart";
import "package:patientdonorapp/protos/data.pb.dart";
import "package:patientdonorapp/protos/data.pbgrpc.dart";
import "package:patientdonorapp/pages/ProfilePage.dart";

class UpdateUser extends StatefulWidget {
  @override
  _UpdateUserState createState() => _UpdateUserState();
}

class _UpdateUserState extends State<UpdateUser> {
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final mailController = TextEditingController();
  final addressController = TextEditingController();

  Future<void> sendUpdateduser(BuildContext context) async {
    User request = new User(
      name: nameController.text,
      address: addressController.text,
      phoneNumber: numberController.text,
      email: mailController.text,
    );
    Util newUtil = Util(user: request, uID: util.uID);
    User data = await client.updateUser(newUtil);
    util.user = data;
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
          width: 400.0,
          height: 600.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text("Signup"),
              SizedBox(height: 20.0),
              TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(labelText: "Name")),
              TextFormField(
                  controller: numberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: "Phone Number")),
              TextFormField(
                  controller: mailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Email Address")),
              TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Address")),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  sendUpdateduser(context).then((value) => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage())),
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
