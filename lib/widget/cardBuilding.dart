import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:house_design/views/houseDescription.dart';

class Cardbuilding extends StatelessWidget {
  final String employeName;
  final String employePositionn;
  final String image;
  const Cardbuilding({
    super.key,
    required this.employeName,
    required this.employePositionn,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => Housedescription());
      },
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,

                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(.1),
                  Colors.black.withOpacity(.8),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(.5),
              ),
              child: Center(
                child: Wrap(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text('1.8 km', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  employeName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(employePositionn, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
