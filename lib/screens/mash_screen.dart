import 'package:flutter/material.dart';

class MashScreen extends StatefulWidget {
  const MashScreen({super.key});

  @override
  State<MashScreen> createState() => _MashScreenState();
}

class _MashScreenState extends State<MashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Mash"),
    );
  }
}
