import 'package:flutter/material.dart';
import 'package:package_delivery_app/repository/Screens/cart/cartscreen.dart';
import 'package:package_delivery_app/repository/Screens/category/categoryscreen.dart';
import 'package:package_delivery_app/repository/Screens/home/homescreen.dart';
import 'package:package_delivery_app/repository/Screens/print/printscreen.dart';

class bottomnavscreen extends StatefulWidget {
  @override
  State<bottomnavscreen> createState() => _bottomnavscreen();
}

class _bottomnavscreen extends State<bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    cartscreen(),
    CategoryScreen(),
    printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 25,), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag,size: 25,),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,size: 25,),
            label: "category",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.print,size: 25,), label: "print"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; 
          });
        },
      ),
    );
  }
}
