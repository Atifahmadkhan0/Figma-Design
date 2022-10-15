import 'dart:io';

import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  final AssetImage img;
  const RoomPage({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 231, 231),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(fit: BoxFit.cover, image: img),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.watch_later,
                            color: Color.fromARGB(255, 250, 99, 88),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "325 m",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          "Distance",
                          style: TextStyle(
                              color: Color.fromARGB(255, 161, 161, 161)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Row(
                      children: [
                        Card(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.star,
                                size: 30,
                                color: Color.fromARGB(255, 255, 142, 29),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4.6",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          "Notes",
                          style: TextStyle(
                              color: Color.fromARGB(255, 161, 161, 161)),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
                  style: TextStyle(color: Color.fromARGB(255, 161, 161, 161)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: 350,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.black),
                onPressed: () {},
                child: Text(
                  "Reservez maintenant",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
