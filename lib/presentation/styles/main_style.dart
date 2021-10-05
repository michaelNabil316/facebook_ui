import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final myThemeDataConst = ThemeData(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    appBarTheme: myAppBarThemeConst);

final myAppBarThemeConst = AppBarTheme(
  iconTheme: IconThemeData(color: Colors.black),
  backgroundColor: Colors.white,
  toolbarTextStyle: TextStyle(color: Colors.black),
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ),
  elevation: 0.0,
);
