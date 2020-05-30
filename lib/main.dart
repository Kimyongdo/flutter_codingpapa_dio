import 'package:flutter/material.dart';
import 'dio_server.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FlatButton(
            child: Text("GET"),
            color: Colors.orangeAccent,
            onPressed: () {
              server.getReq();
            },
          ),
          FlatButton(
            color: Colors.orangeAccent,
            child: Text("POST"),
            onPressed: () {
              server.postReq();
            },
          ),
          FlatButton(
            color: Colors.orangeAccent,
            child: Text("GET WITH QUERY "),
            onPressed: () {
              server.getReqWzQuery();
            },
          ),
        ],
      ),
    );
  }
}
