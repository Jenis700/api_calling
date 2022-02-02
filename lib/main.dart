
import 'package:api_calling/apicall.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // getRequest();
    postRequest();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
