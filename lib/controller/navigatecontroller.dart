import 'package:flutter/material.dart';
import 'package:prov/view/cart.dart';
import 'package:prov/view/tabbar.dart';

class NavigateController extends ChangeNotifier {
  List<Widget> screens = [Tabbar(), Cart()];
  int currentIndex = 0;

  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
