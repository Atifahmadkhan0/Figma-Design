import 'package:flutter/material.dart';

class SalleScreen extends StatefulWidget {
  const SalleScreen({super.key});

  @override
  State<SalleScreen> createState() => _SalleScreenState();
}

class _SalleScreenState extends State<SalleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Salle"),
    );
  }
}
