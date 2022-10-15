import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iqama_app/pages/home_page.dart';
import 'package:iqama_app/pages/splash_page.dart';
import 'package:iqama_app/screens/lieu.dart';

import '../screens/Masjid-screen.dart';
import '../screens/mash_screen.dart';
import '../screens/room.dart';
import '../screens/salle_screen.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  List<Widget> layoutList = const [
    HomePage(),
    SalleScreen(),
    MashScreen(),
    RoomScreen(),
    LieuScreen(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: Colors.black,
          backgroundColor: Color.fromARGB(255, 143, 143, 143),
          height: 60,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Color.fromARGB(255, 178, 178, 178),
            ),
            Icon(
              Icons.fire_truck_outlined,
              size: 30,
              color: Color.fromARGB(255, 178, 178, 178),
            ),
            Icon(
              Icons.cloud_circle,
              size: 30,
              color: Color.fromARGB(255, 178, 178, 178),
            ),
            Icon(
              Icons.note_add_outlined,
              size: 30,
              color: Color.fromARGB(255, 178, 178, 178),
            ),
            Icon(
              Icons.person,
              color: Color.fromARGB(255, 178, 178, 178),
              size: 30,
            ),
          ]),
      body: layoutList[index],
    );
  }
}
