import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int currentScreen = 0;

  changeScreen(int index) {
    currentScreen = index;
    notifyListeners();
  }
}
