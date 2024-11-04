import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(),
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey[400],
          ),
          onPressed: () {
            scaffoldkey.currentState?.openDrawer();
          },
          icon: Icon(
            Icons.person,
            color: Colors.grey[100],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                size: 25,
              ))
        ],
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: const Color.fromARGB(255, 212, 212, 212),
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 0,
                    color: const Color.fromARGB(255, 223, 223, 223),
                    offset: Offset(-5, -5),
                  ),
                ],
              ),
              child: TextField(
                controller: _search,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
