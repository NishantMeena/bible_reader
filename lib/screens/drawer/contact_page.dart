import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactScreen();
  }
}

class ContactScreen extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Contact Screen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
