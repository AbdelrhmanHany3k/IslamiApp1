import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;

  changeThemeMode(ThemeMode mode) async {
    theme = mode;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    prefs.setString("theme", mode == ThemeMode.light ? "light" : "dark");
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    String? savedTheme = prefs.getString("theme");
    if (savedTheme != null) {
      theme = savedTheme == "light" ? ThemeMode.light : ThemeMode.dark;
      notifyListeners();
    }
  }
}
