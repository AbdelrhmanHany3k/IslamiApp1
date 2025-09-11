import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  ThemeMode theme=ThemeMode.light;

  changeThemeMode(ThemeMode mode){
    theme=mode;
    notifyListeners();
  }
}