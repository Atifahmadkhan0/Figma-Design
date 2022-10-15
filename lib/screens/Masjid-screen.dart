import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iqama_app/Tabs%20Screens/room_page.dart';

class MasjidScreen extends StatefulWidget {
  const MasjidScreen({super.key});

  @override
  State<MasjidScreen> createState() => _MasjidScreenState();
}

class _MasjidScreenState extends State<MasjidScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Text(
                  "Lieux a proximine",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        foregroundColor: Color.fromARGB(255, 92, 92, 92),
                        elevation: 0.0,
                        backgroundColor: Color.fromARGB(255, 216, 215, 215)),
                    onPressed: () {},
                    child: Text("Voir tout")),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RoomPage(
                                  img: AssetImage('assets/pic.jpg'),
                                )));
                  },
                  child: ReusableStack(
                    text: 'Nom du Lieu',
                    address: 'America, endalia',
                    img: AssetImage('assets/pic.jpg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RoomPage(
                                  img: AssetImage('assets/pic22.jpg'),
                                )));
                  },
                  child: ReusableStack(
                      text: "China,istanbl",
                      img: AssetImage('assets/pic22.jpg'),
                      address: "Japan,facva"),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RoomPage(
                                  img: AssetImage('assets/pic3.jpg'),
                                )));
                  },
                  child: ReusableStack(
                      text: "Malysia,roghos",
                      img: AssetImage('assets/pic3.jpg'),
                      address: "Malysia,roghos"),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RoomPage(
                                  img: AssetImage('assets/pic4.jpg'),
                                )));
                  },
                  child: ReusableStack(
                      text: "SaudiArabia, treak",
                      img: AssetImage('assets/pic4.jpg'),
                      address: "SaudiArabia, treak"),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RoomPage(
                                  img: AssetImage('assets/pic5.jpg'),
                                )));
                  },
                  child: ReusableStack(
                      text: "Pakistan,Lahore",
                      img: AssetImage('assets/pic5.jpg'),
                      address: "Pakistan,Lahore"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableStack extends StatelessWidget {
  const ReusableStack({
    Key? key,
    required this.text,
    required this.img,
    required this.address,
  }) : super(key: key);
  final String text;
  final AssetImage img;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(fit: BoxFit.cover, image: img)),
        ),
        Positioned(
          top: 120,
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey[400],
                      ),
                      Text(
                        "Paris,France",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 40,
                                child: ReusableCircle(
                                  color: Colors.red,
                                ),
                              ),
                              Positioned(
                                right: 30,
                                child: ReusableCircle(
                                  color: Colors.orange,
                                ),
                              ),
                              Positioned(
                                right: 20,
                                child: ReusableCircle(
                                  color: Colors.green,
                                ),
                              ),
                              Positioned(
                                right: 10,
                                child: ReusableCircle(
                                  color: Color.fromARGB(255, 192, 192, 192),
                                ),
                              ),
                              Positioned(
                                top: 9,
                                right: 15,
                                child: Text(
                                  "+15",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 112, 112, 112),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          child: Card(
            color: Color.fromARGB(255, 176, 175, 175),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReusableCircle extends StatelessWidget {
  const ReusableCircle({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 17,
      backgroundColor: color,
    );
  }
}
