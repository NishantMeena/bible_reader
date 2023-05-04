import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HelpScreen();
  }
}

class HelpScreen extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Help Screen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
