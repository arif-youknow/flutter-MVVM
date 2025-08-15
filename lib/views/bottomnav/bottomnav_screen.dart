import 'package:flutter/material.dart';
import 'package:mvvm_project/core/utils/image_helper.dart';
import 'package:mvvm_project/views/cart/cart_screen.dart';
import 'package:mvvm_project/views/category/category_screen.dart';
import 'package:mvvm_project/views/home/home_screen.dart';
import 'package:mvvm_project/views/print/print_screen.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({super.key});

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: ImageHelper.customImage(img: "home.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: ImageHelper.customImage(img: "category.png"),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: ImageHelper.customImage(img: "print.png"),
            label: "Print",
          ),
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
