import 'package:flutter/material.dart';
import 'package:house_design/widget/desCardWidget.dart';
import 'package:house_design/widget/desGallery.dart';
import 'package:house_design/widget/desRowWidget.dart';
import 'package:house_design/widget/googleMap.dart';

class Housedescription extends StatelessWidget {
  const Housedescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 8, left: 8),
              child: Descardwidget(),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Description",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "The 3 level house that has a modern design, has a large pool and garage that fits up to four cars... ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: "Show more",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Desrowwidget(),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Gallery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Desgallery(
              images: [
                'assets/images/inside_room.jfif',
                'assets/images/inside_room2.jfif',
                'assets/images/inside_room3.jfif',
                'assets/images/inside_room.jfif',
                'assets/images/inside_room.jfif',
                'assets/images/inside_room.jfif',
                'assets/images/inside_room.jfif',
                'assets/images/inside_room.jfif',
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GooglemapWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                right: 8,
                left: 8,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price", style: TextStyle(color: Colors.grey)),
                      Text(
                        "Rp 2.500,000.000 / year",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Rent Now ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
