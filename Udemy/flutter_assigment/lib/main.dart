import 'package:flutter/material.dart';
import 'package:flutter_assigment/main_page_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter sample"),
        ),
        body: MainPageBody(),
      ),
    );
  }
}
