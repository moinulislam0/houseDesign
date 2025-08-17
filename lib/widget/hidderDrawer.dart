import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:house_design/views/homePages.dart';

class HidderdrawerWidget extends StatefulWidget {
  const HidderdrawerWidget({super.key});

  @override
  State<HidderdrawerWidget> createState() => _HidderdrawerWidgetState();
}

class _HidderdrawerWidgetState extends State<HidderdrawerWidget> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    var screenHiddenDrawer = ScreenHiddenDrawer(
  ItemHiddenMenu(
    name: "Home", 
    baseStyle: const TextStyle(color: Colors.white, fontSize: 18),
    selectedStyle: const TextStyle(
      color: Colors.amber,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
     
  ),
  const Homepages(),
);
    _pages = [
      screenHiddenDrawer,

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Profile",
          baseStyle: const TextStyle(color: Colors.white, fontSize: 18),
          selectedStyle: const TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Scaffold(
          body: Center(child: Text("Profile Page")),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.blue,
      initPositionSelected: 0,
      slidePercent: 60, 
      contentCornerRadius: 30, 
    );
  }
}
