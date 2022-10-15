import 'package:flutter/material.dart';

class TabsData extends StatelessWidget {
  const TabsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 50,
          // child: SvgPicture.asset(
          //   "assets/mosquesvg.png",
          //   width: 18.0,
          //   height: 18.0,
          // ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage("assets/png.png"),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 100,
          child: Tab(
            text: "Masjid",
          ),
        ),
      ],
    );
  }
}
