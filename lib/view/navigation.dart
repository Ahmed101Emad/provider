import 'package:flutter/material.dart';
import 'package:prov/controller/navigatecontroller.dart';
import 'package:provider/provider.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigateController>(
        builder: (context, controller, widget) => Scaffold(
              body: controller.screens[controller.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: "Cart"),
                ],
                currentIndex: controller.currentIndex,
                onTap: (index) => controller.changeIndex(index),
              ),
            ));
  }
}
