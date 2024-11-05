import 'package:blood_bank/addDonor.dart';
import 'package:blood_bank/homepage.dart';
import 'package:blood_bank/loginpage.dart';
import 'package:blood_bank/under_maintenance/donation.dart';
import 'package:blood_bank/under_maintenance/notification.dart';
import 'package:blood_bank/signuppage.dart';
import 'package:blood_bank/under_maintenance/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      home: Loginpage(),
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
