import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:house_design/views/homePages.dart';
import 'package:house_design/widget/hiddenDrawer.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatefulWidget {
  const MyApps({super.key});

  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "House Design",
      home: HidderdrawerWidget(),
    );
  }
}
