import 'package:flutter/material.dart';

class Houseratewidget extends StatelessWidget {
  final String houseName;
  final int countBedroom;
  final int countBathroom;
  final String houseRate;
  final String image;
  const Houseratewidget({
    super.key,
    required this.houseName,
    required this.countBedroom,
    required this.houseRate,
    required this.countBathroom,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(houseName, style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 8),
            Text("Rp.${houseRate} /year", style: TextStyle(color: Colors.blue)),
            SizedBox(height: 8),
            Row(
              children: [
                Wrap(
                  children: [
                    Icon(Icons.bed_rounded, color: Colors.black),
                    SizedBox(width: 4),
                    Text(
                      "${countBedroom} Bedroom",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Wrap(
                  children: [
                    Icon(Icons.bathtub_outlined, color: Colors.black),
                    SizedBox(width: 4),
                    Text(
                      "${countBathroom} Bathroom",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
