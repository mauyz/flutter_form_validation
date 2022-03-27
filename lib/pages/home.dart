import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            ListTile(title: Text("Container")),
            ListTile(title: Text("BoxDecoration")),
            ListTile(title: Text("SingleChildScrollView")),
            ListTile(title: Text("Column")),
            ListTile(title: Text("TextField")),
            ListTile(title: Text("InputDecoration")),
            ListTile(title: Text("AppBar")),
            ListTile(title: Text("Image")),
            ListTile(title: Text("ListTile")),
            ListTile(title: Text("Container")),
            ListTile(title: Text("BoxDecoration")),
            ListTile(title: Text("SingleChildScrollView")),
            ListTile(title: Text("Column")),
            ListTile(title: Text("TextField")),
            ListTile(title: Text("InputDecoration")),
            ListTile(title: Text("AppBar")),
            ListTile(title: Text("Image")),
            ListTile(title: Text("ListTile")),
          ],
        ),
      ),
      persistentFooterButtons: [
        MaterialButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const LoginPage()),
            );
          },
          child: const Text("Log Out"),
        ),
      ],
    );
  }
}
