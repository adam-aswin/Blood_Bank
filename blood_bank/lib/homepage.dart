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
      backgroundColor: const Color.fromARGB(235, 255, 255, 255),
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
              onPressed: () {
                Navigator.pushNamed(context, "/not");
              },
              icon: Icon(
                Icons.notifications_outlined,
                size: 25,
              ))
        ],
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(235, 255, 255, 255),
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(child: Text("User name")),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/donation");
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.book,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Dontation Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            // SizedBox(
            //   height: 5,
            // ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/set");
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )
                  ],
                )),
            TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
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
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 305,
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
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
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
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          side:
                                              BorderSide(color: Colors.black))),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/donor");
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.black,
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Add donor",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 0,
              child: Text(
                "Donors",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(bottom: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 110,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.grey[400],
                                ),
                                child: Icon(
                                  Icons.person,
                                  size: 50,
                                  color: Colors.grey[100],
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                      ),
                                    ),
                                    Text("place"),
                                    Text("8590717324"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "A-",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 196, 14, 2),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 35,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.call,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 35,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.chat_bubble_rounded,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
