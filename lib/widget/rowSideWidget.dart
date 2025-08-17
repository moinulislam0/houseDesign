import 'package:flutter/material.dart';
import 'package:house_design/Containts/Containts.dart';

class Rowsidewidget extends StatefulWidget {
  const Rowsidewidget({super.key});

  @override
  State<Rowsidewidget> createState() => _RowsidewidgetState();
}

class _RowsidewidgetState extends State<Rowsidewidget> {
  int isSelected = 0; // nothing selected yet
  List<String> getButtonRow = ['House', "Apartment", "Hotel", "Villa"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, bottom: 16),
          child: Row(
            children: List.generate(getButtonRow.length, (index) {
              final selected = isSelected == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: selected
                          ? Containts.blueColor
                          : const Color.fromARGB(255, 247, 247, 246),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: selected
                          ? [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.2),
                                offset: const Offset(4, 4),
                                blurRadius: 16,
                              ),
                            ]
                          : [],
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      getButtonRow[index],
                      style: TextStyle(
                        color: selected
                            ? Colors.white
                            : Color.fromARGB(255, 124, 124, 124),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
