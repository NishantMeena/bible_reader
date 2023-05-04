import 'dart:ffi';

import 'package:bible_reading/screens/auth/signup_page.dart';
import 'package:bible_reading/screens/main/home_page.dart';
import 'package:bible_reading/screens/util/my_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginScreen();
  }
}

class LoginScreen extends State<LoginPage> {
  var mEmail = TextEditingController();
  var mPass = TextEditingController();
  static String KEY_EMAIL = "email";
  static String KEY_PASSWORD = "password";
  static String KEY_LOGIN = "loggedin";
  var showHide = true;
  var eyeIcon = Icons.remove_red_eye;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('login')),
      ),
      body: Container(
        child: Center(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/app_icon.png',
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: mEmail,
                      enabled: true,
                      cursorColor: Colors.green.shade400,
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.green, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        prefixIcon: Icon(Icons.email, color: Colors.green),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: showHide,
                      obscuringCharacter: '*',
                      controller: mPass,
                      cursorColor: Colors.green.shade400,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.green, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        suffixText: "",
                        suffixIcon: IconButton(
                          icon: Icon(
                            eyeIcon,
                            color: Colors.green,
                          ),
                          onPressed: () {
                            setState(() {
                              if (showHide == true) {
                                showHide = false;
                                eyeIcon = Icons.remove_red_eye_outlined;
                              } else {
                                showHide = true;
                                eyeIcon = Icons.remove_red_eye;
                              }
                            });
                          },
                        ),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                            shadowColor: Colors.greenAccent,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            //////// HERE
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ));
                          },
                          child: Text('Sign Up'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            onPrimary: Colors.white,
                            shadowColor: Colors.greenAccent,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            //////// HERE
                          ),
                          onPressed: () async {
                            String email = mEmail.text.toString();
                            String pass = mPass.text.toString();
                            if (email.isEmpty) {
                              errorSnackbar('Error', 'Enter Email');
                            } else if (isEmail(email) == false) {
                              errorSnackbar('Error', 'Enter Vailed Email');
                            } else if (pass.isEmpty) {
                              errorSnackbar('Error', 'Enter Password');
                            } else {
                               Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                            }
                            setState(() {});
                          },
                          child: Text('Login'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
