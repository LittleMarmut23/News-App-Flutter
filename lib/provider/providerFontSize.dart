import 'package:flutter/material.dart';

class FontSizeProvider with ChangeNotifier {
  String dropdownValue = 'Sedang';
  void UbahFontSize(String font) {
    dropdownValue = font;
    print(dropdownValue);
    notifyListeners();
  }
}
