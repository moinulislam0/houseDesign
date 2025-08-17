import 'package:flutter/material.dart';

class Desgallery extends StatelessWidget {
  final List<String> images;

  const Desgallery({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    int maxVisible = 3;
    bool hasExtra = images.length > maxVisible;
    int extraCount = hasExtra ? images.length - maxVisible : 0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        child: GridView.count(
          crossAxisCount: 1,
          scrollDirection: Axis.horizontal,
          mainAxisSpacing: 26,
          children: [
            for (int i = 0; i < (hasExtra ? maxVisible : images.length); i++)
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(images[i]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            if (hasExtra)
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        height: 300,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                              ),
                          itemCount: extraCount,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(images[maxVisible + index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/inside_room4.jfif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),

                      Center(
                        child: Text(
                          "+$extraCount",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
