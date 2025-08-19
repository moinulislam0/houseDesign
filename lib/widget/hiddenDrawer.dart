import 'package:flutter/material.dart';
import 'package:house_design/views/homePages.dart';

class HidderdrawerWidget extends StatefulWidget {
  const HidderdrawerWidget({super.key});

  @override
  State<HidderdrawerWidget> createState() => _HidderdrawerWidgetState();
}

class _HidderdrawerWidgetState extends State<HidderdrawerWidget> {
  double value = 0;
  int isSelected = 0;

  final List<String> titleName = [
    "Home",
    "Profile",
    "Nearby",
    "BookMark",
    "Notification",
    "Message",
    "Setting",
    "Help",
    "Logout",
  ];

  final List<IconData> iconData = [
    Icons.home,
    Icons.person,
    Icons.location_on_outlined,
    Icons.bookmark_outline,
    Icons.notifications_outlined,
    Icons.message_outlined,
    Icons.settings_outlined,
    Icons.help_outline,
    Icons.logout_outlined,
  ];

  void toggleDrawer() => setState(() => value = value == 0 ? 1 : 0);
  void openDrawer() => setState(() => value = 1);
  void closeDrawer() => setState(() => value = 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.delta.dx > 10) openDrawer();
        if (details.delta.dx < -10) closeDrawer();
      },
      child: Stack(
        children: [
          // Drawer background
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue,
            child: SafeArea(
              child: Material(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(titleName.length, (index) {
                    final selected = isSelected == index;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isSelected = index;
                                closeDrawer();
                              });
                            },
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              width: 190,
                              height: 50,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 16,
                              ),
                              decoration: BoxDecoration(
                                color: selected
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Stack for Notification and Message badges
                                  if (titleName[index] == "Notification" ||
                                      titleName[index] == "Message")
                                    Stack(
                                      children: [
                                        Icon(
                                          iconData[index],
                                          color: selected
                                              ? Colors.blue
                                              : Colors.white,
                                        ),
                                        Positioned(
                                          right: 2,
                                          top: 0,
                                          child: Container(
                                            height: 8,
                                            width: 8,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  else
                                    Icon(
                                      iconData[index],
                                      color: selected
                                          ? Colors.blue
                                          : Colors.white,
                                    ),
                                  const SizedBox(width: 10),
                                  Text(
                                    titleName[index],
                                    style: TextStyle(
                                      color: selected
                                          ? Colors.blue
                                          : Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Divider after every 3 buttons
                        if ((index + 1) % 3 == 0 &&
                            index != titleName.length - 1)
                          SizedBox(
                            width: 180,
                            child: const Divider(color: Colors.white),
                          ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ),

          // Main content with 3D animation
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: const Duration(milliseconds: 500),
            builder: (_, double val, __) {
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..setEntry(0, 3, 200 * val),

                child: AbsorbPointer(
                  absorbing: value != 0,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 50 * val,
                      left: 50 * val,
                      bottom: 50 * val,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * val),
                      boxShadow: [
                        if (val > 0)
                          const BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10 * val),
                      child: const Homepages(),
                    ),
                  ),
                ),
              );
            },
          ),

          // Transparent overlay to close drawer
          if (value != 0)
            GestureDetector(
              onTap: closeDrawer,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.transparent,
              ),
            ),
        ],
      ),
    );
  }
}
