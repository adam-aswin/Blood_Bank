import 'package:blood_bank/addDonor.dart';
import 'package:blood_bank/homepage.dart';
import 'package:blood_bank/loginpage.dart';
import 'package:blood_bank/under_maintenance/donation.dart';
import 'package:blood_bank/under_maintenance/notification.dart';
import 'package:blood_bank/signuppage.dart';
import 'package:blood_bank/under_maintenance/settingspage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Homepage(),
      routes: {
        "/home": (context) => Homepage(),
        "/login": (context) => Loginpage(),
        "/sign": (context) => Signuppage(),
        "/donor": (context) => Adddonorpage(),
        "/not": (context) => Notificationpage(),
        "/set": (context) => Settingspage(),
        "/donation": (context) => Donationpage(),
      },
    ),
  );
}
