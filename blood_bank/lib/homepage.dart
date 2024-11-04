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
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
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
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: const Color.fromARGB(22, 0, 0, 0),
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: const Color.fromARGB(17, 0, 0, 0),
                    offset: Offset(-5, -5),
                  ),
                ],
              ),
              child: TextField(
                controller: _search,
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.black54),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: const Color.fromARGB(22, 0, 0, 0),
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: const Color.fromARGB(17, 0, 0, 0),
                    offset: Offset(-5, -5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blood Type",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Availablity",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(width: 32, child: Text("O+")),
                            Container(
                              width: MediaQuery.of(context).size.width * .7,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(width: 32, child: Text("AB+")),
                            Container(
                              width: MediaQuery.of(context).size.width * .6,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(width: 32, child: Text("A-")),
                            Container(
                              width: MediaQuery.of(context).size.width * .5,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(width: 32, child: Text("O-")),
                            Container(
                              width: MediaQuery.of(context).size.width * .4,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(width: 32, child: Text("B-")),
                            Container(
                              width: MediaQuery.of(context).size.width * .6,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(width: 32, child: Text("A+")),
                            Container(
                              width: MediaQuery.of(context).size.width * .7,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(width: 32, child: Text("AB-")),
                            Container(
                              width: MediaQuery.of(context).size.width * .4,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 32,
                              child: Text("B+"),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .5,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.horizontal(
                                      right: Radius.circular(5))),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
