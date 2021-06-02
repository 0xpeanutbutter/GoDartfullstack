import 'package:flutter/material.dart';
import 'pages/LoginPage.dart';
import "package:patientdonorapp/protos/data.pb.dart";
import "package:patientdonorapp/protos/data.pbgrpc.dart";
import 'package:grpc/grpc.dart';

void main() => runApp(MyApp());
Util util = new Util();

var client;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    print("init state log");
    super.initState();
    client = DonorPatientsClient(ClientChannel(
      "localhost",
      port: 9090,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "D&P app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
