
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyWidgets{

  statusBar(Color color) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color)
    );
  }

  moveToHomeScreen({required Widget screen, required int time}) {
    Timer(
      Duration(milliseconds: time), () {
        MaterialPageRoute(builder: (context) => screen);
      }
    );
  }

}