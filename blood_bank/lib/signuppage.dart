import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _cpassword = TextEditingController();
  bool obs = true;
  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email.text.trim(), password: _password.text.trim());
    Navigator.pushNamedAndRemoveUntil(context, "/main", (route) => false);
  }

  void check() {
    if (_cpassword.text == _password.text) {
      signUp();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password doesn't match")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(244, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.only(left: 50, right: 50),
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              "./images/login-removebg-preview.png",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(5, 5),
                    color: Colors.grey,
                  ),
                ],
              ),
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 177, 15, 4),
                      width: 2,
                    ),
                  ),
                  hintText: "Email",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(5, 5),
                    color: Colors.grey,
                  ),
                ],
              ),
              child: TextField(
                cursorColor: Colors.black,
                controller: _password,
                obscureText: obs,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obs = !obs;
                      });
                    },
                    icon: Icon(obs
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 177, 15, 4),
                      width: 2,
                    ),
                  ),
                  hintText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(5, 5),
                    color: Colors.grey,
                  ),
                ],
              ),
              child: TextField(
                cursorColor: Colors.black,
                controller: _cpassword,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 177, 15, 4),
                      width: 2,
                    ),
                  ),
                  hintText: "Confirm Password",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: check,
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
