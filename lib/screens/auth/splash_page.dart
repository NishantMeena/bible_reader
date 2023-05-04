import 'dart:async';

import 'package:bible_reading/screens/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreen();
  }
}

class SplashScreen extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      moveToNext();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ClipRRect(
                child: Image.asset('assets/images/splash_img.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> moveToNext() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ));

    //Get.to(LoginPage());
  }
}
