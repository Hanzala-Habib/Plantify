import 'package:flutter/material.dart';



class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Image(image: AssetImage("assets/icons/flower.png")), label: ""),
      BottomNavigationBarItem(icon: Image(image: AssetImage("assets/icons/heart-icon.png")),label: ""),
      BottomNavigationBarItem(icon: Image(image: AssetImage("assets/icons/user-icon.png")),label: ""),

    ]);
  }
}
