import 'package:flutter/material.dart';

class Descardwidget extends StatelessWidget {
  const Descardwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/image_2.jfif'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topCenter,

              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.1),
                Colors.black.withOpacity(.7),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Container(
                height: 40,
                width: 40,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(.2),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Container(
                height: 40,
                width: 40,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(.2),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_outline, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 12,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dreamsville House",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "JL Sultan Iskander Muda,Jakarta selatan",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: const Color.fromARGB(255, 221, 220, 220),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 8,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(.2),
                        ),
                        child: Icon(Icons.bed_outlined, color: Colors.white),
                      ),
                      Text("6 Bedroom", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  SizedBox(width: 20),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 8,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(.2),
                        ),
                        child: Icon(
                          Icons.bathtub_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Text("4 Bathroom", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
