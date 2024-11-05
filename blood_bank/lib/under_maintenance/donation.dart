import 'package:flutter/material.dart';

class Donationpage extends StatefulWidget {
  const Donationpage({super.key});

  @override
  State<Donationpage> createState() => _DonationpageState();
}

class _DonationpageState extends State<Donationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Oops!",
              style: TextStyle(fontSize: 16),
            ),
            Text("Under maintenance :)")
          ],
        ),
      ),
    );
  }
}
