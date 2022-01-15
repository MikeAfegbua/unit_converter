import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  bool _val = false;

  bool get getVal => _val;

  set getVal(bool value) {
    _val = value;
    notifyListeners();
  }
}
