import "package:flutter/material.dart";
import './LoginPage.dart';
import "package:patientdonorapp/protos/data.pb.dart";
import "package:patientdonorapp/protos/data.pbgrpc.dart";
import "package:patientdonorapp/pages/ProfilePage.dart";
import "package:patientdonorapp/main.dart";

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final numberController = TextEditingController();
  final mailController = TextEditingController();
  final addressController = TextEditingController();
  final typeController = TextEditingController();

  Future<void> createUserdata(BuildContext context) async {
    User request = new User(
      name: nameController.text,
      address: addressController.text,
      phoneNumber: numberController.text,
      userType: typeController.text,
      email: mailController.text,
    );
    Util newUtil = new Util(user: request);
    util = newUtil;
    User data = await client.createUser(newUtil);
    util.id = data.id;
    util.uID = data.uID;
    print("THe util is being printed here");
    print(addressController.text);
    print(util);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("SignUp page")),
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
              TextFormField(
                  controller: typeController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "User Type")),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  createUserdata(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
              SizedBox(height: 20.0),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account ?"),
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage())),
                        child: Text("Sign in"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
