import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  bool isDarkMode = false;

  ThemeProvider() {
    loadTheme();
  }

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    saveTheme();
    notifyListeners();
  }

  void loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode = prefs.getBool('darkMode') ?? false;
    notifyListeners();
  }

  void saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', isDarkMode);
  }
}
