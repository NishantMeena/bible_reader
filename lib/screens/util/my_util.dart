import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool isEmail(String em) {

String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);

return regExp.hasMatch(em);
}
bool isSamePassword(String pass,String cPass) {

  if(pass!=cPass){
    return false;
  }else{
   return true;
  }
}

void errorSnackbar(String title, String message){
  Get.snackbar(
      title, message,
      backgroundColor:Colors.redAccent.shade100,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM
  );
}



void messageSnackbar(String title, String message){
  Get.snackbar(
      title, message,
      backgroundColor:Colors.green.shade100,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM
  );
}