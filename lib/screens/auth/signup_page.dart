import 'dart:ffi';

import 'package:bible_reading/screens/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main/home_page.dart';
import '../util/my_util.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpScreen();
  }
}

class SignUpScreen extends State<SignUpPage> {
  var mName = TextEditingController();
  var mNumber = TextEditingController();
  var mEmail = TextEditingController();
  var mPass = TextEditingController();
  var mCPass = TextEditingController();
  static String KEY_EMAIL = "email";
  static String KEY_PASSWORD = "password";
  static String KEY_LOGIN = "loggedin";
  var showHide1 = true;
  var eyeIcon1 = Icons.remove_red_eye;
  var dbName = "BibleUserDB";

  var showHide2 = true;
  var eyeIcon2 = Icons.remove_red_eye;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign Up')),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                        keyboardType: TextInputType.name,
                        controller: mName,
                        enabled: true,
                        cursorColor: Colors.green.shade400,
                        decoration: InputDecoration(
                          hintText: ''
                              'Enter Name',
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
                          prefixIcon:
                              Icon(Icons.account_circle, color: Colors.green),
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
                        keyboardType: TextInputType.phone,
                        controller: mNumber,
                        enabled: true,
                        cursorColor: Colors.green.shade400,
                        decoration: InputDecoration(
                          hintText: 'Contact Number',
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
                          prefixIcon: Icon(Icons.phone_android_rounded,
                              color: Colors.green),
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
                        obscureText: showHide1,
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
                              eyeIcon1,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              setState(() {
                                if (showHide1 == true) {
                                  showHide1 = false;
                                  eyeIcon1 = Icons.remove_red_eye_outlined;
                                } else {
                                  showHide1 = true;
                                  eyeIcon1 = Icons.remove_red_eye;
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
                        obscureText: showHide2,
                        obscuringCharacter: '*',
                        controller: mCPass,
                        cursorColor: Colors.green.shade400,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
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
                              eyeIcon2,
                              color: Colors.green,
                            ),
                            onPressed: () {
                              setState(() {
                                if (showHide2 == true) {
                                  showHide2 = false;
                                  eyeIcon2 = Icons.remove_red_eye_outlined;
                                } else {
                                  showHide2 = true;
                                  eyeIcon2 = Icons.remove_red_eye;
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
                              String name = mName.text.toString();
                              String number = mNumber.text.toString();
                              String email = mEmail.text.toString();
                              String pass = mPass.text.toString();
                              String cpass = mCPass.text.toString();

                              if (name.isEmpty) {
                                errorSnackbar('Error', 'Enter Name');
                              } else if (number.isEmpty) {
                                errorSnackbar('Error', 'Enter Number');
                              } else if (email.isEmpty) {
                                errorSnackbar('Error', 'Enter Email');
                              } else if (isEmail(email) == false) {
                                errorSnackbar('Error', 'Enter Vailed Email');
                              } else if (pass.isEmpty) {
                                errorSnackbar('Error', 'Enter Password');
                              } else if (cpass.isEmpty) {
                                errorSnackbar(
                                    'Error', 'Enter Confirm Password');
                              } else if (!isSamePassword(pass, cpass)) {
                                errorSnackbar('Error',
                                    'Password & Confirm Password must be same');
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ));
                              }
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
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));
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
      ),
    );
  }
}
