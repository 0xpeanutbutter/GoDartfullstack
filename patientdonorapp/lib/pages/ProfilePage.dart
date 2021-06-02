import "package:flutter/material.dart";
import 'package:patientdonorapp/main.dart';
import "package:patientdonorapp/pages/LoginPage.dart";
import "package:patientdonorapp/pages/updateUser.dart";
import "package:patientdonorapp/pages/GetUser.dart";
import "package:patientdonorapp/pages/AddUser.dart";
import 'package:patientdonorapp/pages/RequestedId.dart';
import 'package:patientdonorapp/pages/ConnectedId.dart';
import 'package:patientdonorapp/pages/PendingId.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    print("build is being called");
    String contact = util.user.phoneNumber;
    String type = util.user.userType;
    String name = util.user.name;
    String mail = util.user.email;
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("My Profile")),
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
            "Contact : $contact",
            style: TextStyle(fontSize: 20),
          ),
        ],
      )),
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50.0, right: 10.0),
          child: FloatingActionButton(
            child: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UpdateUser()));
            },
          )),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Logo here'),
          ),
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text("Add users"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddUser()));
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Get Profile"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => GetUser()));
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.group_sharp),
            title: Text("Connected profiles"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ConnectedId()));
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Requested Connections"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RequestedUsers()));
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.contacts_outlined),
            title: Text("Pending Connections"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PendingId()));
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              util = null;
              //  Navigator.popUntil(context, ModalRoute.withName('/LoginPage'));
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )
        ],
      )),
    );
  }
}
