import 'package:flutter/material.dart';

class Adddonorpage extends StatefulWidget {
  const Adddonorpage({super.key});

  @override
  State<Adddonorpage> createState() => _AdddonorpageState();
}

class _AdddonorpageState extends State<Adddonorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
