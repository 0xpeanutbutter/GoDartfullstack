import "package:patientdonorapp/pages/ProfilePage.dart";
import "package:flutter/material.dart";
import './SignupPage.dart';
import "package:patientdonorapp/protos/data.pb.dart";
import "package:patientdonorapp/protos/data.pbgrpc.dart";
import 'package:patientdonorapp/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final uidController = TextEditingController();
  final idController = TextEditingController();

  Future<void> sendSecretText(BuildContext context) async {
    Util newutil = new Util(uID: uidController.text, id: idController.text);
    util = newutil;
    User data = await client.login(newutil);
    util.user = data;
    print(util);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Login page")),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          width: 400.0,
          height: 425.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text("Enter Id"),
              SizedBox(height: 20.0),
              TextFormField(
                  controller: idController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Id")),
              SizedBox(height: 20.0),
              Text("Enter Secret Text"),
              SizedBox(height: 20.0),
              TextFormField(
                  controller: uidController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Secret Text")),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  sendSecretText(context).then((value) => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage())),
                      });
                },
              ),
              SizedBox(height: 20.0),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Creating an account ?"),
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage())),
                        child: Text("Signup"))
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
