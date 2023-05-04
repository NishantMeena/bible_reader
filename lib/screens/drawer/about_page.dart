import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutScreen();
  }
}

class AboutScreen extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "About Screen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
