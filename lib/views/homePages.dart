import 'package:flutter/material.dart';
import 'package:house_design/widget/HouseRateWidget.dart';
import 'package:house_design/widget/cardBuilding.dart';
import 'package:house_design/widget/headlineName.dart';
import 'package:house_design/widget/rowSideWidget.dart';

class Homepages extends StatefulWidget {
  const Homepages({super.key});

  @override
  State<Homepages> createState() => _HomepagesState();
}

class _HomepagesState extends State<Homepages> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        const Text(
                          'Location',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(height: 2),
                        Wrap(
                          children: const [
                            Text('Jakarta', style: TextStyle(fontSize: 20)),
                            SizedBox(width: 4),
                            Icon(Icons.arrow_drop_down_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(Icons.notifications_outlined),
                      ),
                      Positioned(
                        right: 15,
                        top: 4,
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 124, 124, 124),
                          ),
                          hintText: "Search address, or near you",
                          fillColor: const Color.fromARGB(255, 247, 246, 246),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Rowsidewidget(),
              const SizedBox(height: 30),
              Headlinename(textName: "Near from You"),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Cardbuilding(
                        employeName: "Dreamsville House",
                        employePositionn: "JL Sultan Iskandar Muda",
                        image: 'assets/images/image_2.jfif',
                      ),
                      SizedBox(width: 20),
                      Cardbuilding(
                        employeName: "Ascot House",
                        employePositionn: "Jl Cilandak Teng",
                        image: "assets/images/image_1.jfif",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Headlinename(textName: "Best for You"),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Houseratewidget(
                        countBathroom: 4,
                        countBedroom: 6,
                        houseName: "Orchad House",
                        houseRate: "2.500,000.000",
                        image: 'assets/images/image_1.jfif',
                      ),
                      SizedBox(height: 25),
                      Houseratewidget(
                        countBathroom: 2,
                        countBedroom: 5,
                        houseName: "Orchad House",
                        houseRate: "2.000,000.000",
                        image: 'assets/images/image_2.jfif',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
