import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;


  changeTheme(ThemeMode mode){
    themeMode=mode;
    notifyListeners();
  }

}
