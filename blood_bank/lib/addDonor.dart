import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Adddonorpage extends StatefulWidget {
  const Adddonorpage({super.key});

  @override
  State<Adddonorpage> createState() => _AdddonorpageState();
}

class _AdddonorpageState extends State<Adddonorpage> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  TextEditingController c5 = TextEditingController();
  TextEditingController c6 = TextEditingController();
  TextEditingController c7 = TextEditingController();
  String? _selectedblood;
  String? _isSelected;
  bool _isChecked = false;
  String? base1;
  File? _image;
  List<dynamic> cnt = [];
  String? base;
  final ImagePicker _picker = ImagePicker();
  final List<String> bloodgroup = [
    "A-",
    "A+",
    "AB-",
    "AB+",
    "O+",
    "O-",
    "B+",
    "B-",
  ];
  void gallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);
      } else {
        print("null");
      }
    });
  }

  void camera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        Navigator.pop(context);
      } else {
        print("null");
      }
    });
  }

  void pickimage() async {
    if (_image == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: const Color.fromARGB(244, 255, 255, 255),
              title: Text(
                "Choose a File",
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                TextButton(
                  onPressed: gallery,
                  child: Text(
                    "Gallery",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: camera,
                  child: Text(
                    "Camera",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
          });
    } else {
      print("null");
    }
  }

  void dob() {
    RegExp reg = RegExp(r'(\d{4})-(0\d||1[0-2])-([0-2]\d||3[0-1])$');
    _isChecked == false
        ? showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: const Color.fromARGB(244, 255, 255, 255),
                title: Text("Please agree to be a donor to Continue"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Ok",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              );
            })
        : reg.hasMatch(c5.text) == false
            ? showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: const Color.fromARGB(244, 255, 255, 255),
                    title: Text("Incorrect Date"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Ok",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  );
                })
            : null;

    c5.clear();
    // print(_isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(244, 255, 255, 255),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          title: Text(
            "Donor Details",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  dob();
                },
                icon: Icon(
                  Icons.done,
                  color: Colors.black,
                ))
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: pickimage,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[400],
                  ),
                  child: ClipOval(
                      child: _image != null
                          ? Image.file(
                              _image!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          : Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 80,
                            )),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                              controller: c1,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 177, 15, 4),
                                    width: 2,
                                  ),
                                ),
                                hintText: "Name",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                              controller: c2,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 177, 15, 4),
                                    width: 2,
                                  ),
                                ),
                                hintText: "Age",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                              controller: c3,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 177, 15, 4),
                                    width: 2,
                                  ),
                                ),
                                hintText: "Email",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Phone",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                              controller: c4,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 177, 15, 4),
                                    width: 2,
                                  ),
                                ),
                                hintText: "Mobile Number",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "D O B",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                              controller: c5,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 177, 15, 4),
                                    width: 2,
                                  ),
                                ),
                                hintText: "yyyy-mm-dd",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Blood Group",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            padding: EdgeInsets.only(left: 8, right: 5),
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _selectedblood == null
                                    ? Text("Select a Blood Group")
                                    : Text(
                                        "$_selectedblood",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 177, 15, 4),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                DropdownButton(
                                  icon: Icon(
                                      Icons.arrow_drop_down_circle_outlined),
                                  dropdownColor:
                                      const Color.fromARGB(244, 255, 255, 255),
                                  underline: Container(
                                    height: 0,
                                  ),
                                  items: bloodgroup.map(
                                    (String blood) {
                                      return DropdownMenuItem(
                                        value: blood,
                                        child: Text(blood),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedblood = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Expanded(
                              flex: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Male"),
                                  Radio(
                                      activeColor:
                                          const Color.fromARGB(255, 177, 15, 4),
                                      value: "Male",
                                      groupValue: _isSelected,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _isSelected = value;
                                        });
                                      }),
                                  Text("Female"),
                                  Radio(
                                      activeColor:
                                          const Color.fromARGB(255, 177, 15, 4),
                                      value: "Female",
                                      groupValue: _isSelected,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _isSelected = value;
                                        });
                                      }),
                                  Text("Others"),
                                  Radio(
                                      activeColor:
                                          const Color.fromARGB(255, 177, 15, 4),
                                      value: "Others",
                                      groupValue: _isSelected,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _isSelected = value;
                                        });
                                      })
                                ],
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                              controller: c6,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 177, 15, 4),
                                    width: 2,
                                  ),
                                ),
                                hintText: "Weight(kg)",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * .63,
                            height: 50,
                            // margin: EdgeInsets.only(left: 30, right: 30),
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
                              controller: c7,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color:
                                        const Color.fromARGB(255, 177, 15, 4),
                                    width: 2,
                                  ),
                                ),
                                hintText: "Location",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 150,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                              activeColor:
                                  const Color.fromARGB(255, 177, 15, 4),
                              value: _isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              }),
                          Text(
                            "I agree to be a donor, and Donor blood is tested \nfor infectious diseases (TTIs) such as HIV, \nHBs Ag, VDRL & HCV and blood group serology. \nThe screening of Transfusion Transmitted \nInfectious Marker (TTIs) is done by ELISA \nMethod.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
