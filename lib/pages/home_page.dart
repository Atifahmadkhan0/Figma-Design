import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iqama_app/screens/Masjid-screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iqama_app/screens/lieu.dart';
import 'package:iqama_app/screens/mash_screen.dart';
import 'package:iqama_app/screens/room.dart';
import 'package:iqama_app/screens/salle_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   leading: Card(
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //     color: Colors.white,
      //     child: Icon(
      //       Icons.menu,
      //       color: Colors.black,
      //     ),
      //   ),
      //   actions: [
      //     Stack(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(right: 10),
      //           child: Card(
      //             shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(40)),
      //             color: Colors.white,
      //             child: Icon(
      //               Icons.notifications,
      //               color: Colors.black,
      //               size: 35,
      //             ),
      //           ),
      //         ),
      //         Positioned(
      //             left: 30,
      //             child: Icon(
      //               Icons.brightness_1,
      //               color: Colors.red,
      //               size: 20,
      //             )),
      //       ],
      //     ),
      //   ],
      // ),
      backgroundColor: Color.fromARGB(255, 232, 231, 231),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                      ),
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                            icon: Icon(Icons.notifications),
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Card(
                            color: Color.fromARGB(255, 250, 99, 88),
                            child: Text(
                              ' 2 ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Priez vos",
                        style: TextStyle(fontSize: 34),
                      ),
                      Text(
                        "Prieres a l'heure!",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: CupertinoSearchTextField(
                          backgroundColor: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // TextField(
                        //     decoration: InputDecoration(
                        //   hintText: "Trouver un endroit",
                        //   prefixIcon: Icon(Icons.search),
                        // )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 142, 29),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TabBar(
                          indicatorColor: Colors.white,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 250, 99, 88),
                          ),
                          labelColor: Colors.white,
                          isScrollable: true,
                          unselectedLabelColor: Colors.black,
                          controller: _tabController,
                          tabs: [
                            Row(
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
                            ),
                            Row(
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
                                      image: AssetImage("assets/sofa.png"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: Tab(
                                    text: "Salle",
                                  ),
                                ),
                              ],
                            ),
                            Row(
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
                                      image: AssetImage("assets/room2.png"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: Tab(
                                    text: "Mash",
                                  ),
                                ),
                              ],
                            ),
                            Row(
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
                                      image: AssetImage("assets/transform.png"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: Tab(
                                    text: "Room",
                                  ),
                                ),
                              ],
                            ),
                            Row(
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
                                      image: AssetImage("assets/copy.png"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: Tab(
                                    text: "lieu",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 270,
                        child: MasjidScreen(),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(items: items),
    );
  }
}
