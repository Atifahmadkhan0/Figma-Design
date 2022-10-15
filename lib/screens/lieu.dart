import 'package:flutter/material.dart';

class LieuScreen extends StatefulWidget {
  const LieuScreen({super.key});

  @override
  State<LieuScreen> createState() => _LieuScreenState();
}

class _LieuScreenState extends State<LieuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("lieu"),
    );
  }
}
