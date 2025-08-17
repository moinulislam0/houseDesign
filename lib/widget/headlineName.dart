import 'package:flutter/material.dart';

class Headlinename extends StatelessWidget {
  final String textName;
  const Headlinename({super.key, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            "See more",
            style: TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
          ),
        ],
      ),
    );
  }
}
