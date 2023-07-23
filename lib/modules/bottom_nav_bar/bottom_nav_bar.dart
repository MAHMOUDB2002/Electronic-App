import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project/modules/cart/cart_screen.dart';
import 'package:project/modules/home/home_screen.dart';
import 'package:project/modules/products_screen/product_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    ProductScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(hexColor('#333742')),
        bottomNavigationBar: SizedBox(
          height: 62,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: GNav(
              gap: 20,
              backgroundColor: Color(hexColor('#454D5A')),
              color: Colors.white,
              activeColor: Colors.white,
              selectedIndex: selectedIndex,
              tabBackgroundColor: Color(hexColor('#333742')),
              onTabChange: (x) {
                setState(() {
                  selectedIndex = x;
                });
              },
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.shopping_bag_outlined, text: 'Cart'),
                GButton(icon: Icons.account_circle_outlined, text: 'Profile')
              ],
            ),
          ),
        ),
        body: pages[selectedIndex]);
  }
}



      // bottomNavigationBar:
      //  BottomNavigationBar(
      //   onTap: (x) {
      //     selectedIndex = x;
      //     pageController.jumpToPage(x);
      //     setState(() {});
      //   },
      //   currentIndex: selectedIndex,
      //   backgroundColor: Colors.grey[800],
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.grey,
      //         ),
      //         label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.card_travel,
      //           color: Colors.grey,
      //         ),
      //         label: 'Cart'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person_pin,
      //           color: Colors.grey,
      //         ),
      //         label: 'Profile'),
      //   ],
      // )
