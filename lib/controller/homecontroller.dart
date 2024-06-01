import 'package:flutter/material.dart';
import 'package:prov/model/fake_data(coffee).dart';
import 'package:prov/model/model.dart';

class HomeController extends ChangeNotifier {
  List<Product> modeledList = [];

  List<Product> modelateData() {
    modeledList = fakeData["data"]!.map((e) => Product.fromJson(e)).toList();
    return modeledList;
  }
}
