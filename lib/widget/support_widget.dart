import 'dart:ui';

import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFeildStyle(){
    return TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold);
  }
  static TextStyle LightTextFeildStyle(){
    return TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontSize: 20);
  }
  static TextStyle semiBoldTextFeildStyle(){
    return TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold);
  }
}