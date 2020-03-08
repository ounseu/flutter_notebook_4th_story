import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZomatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (BuildContext context) => ZomatoMainPage(),
      },
    );
  }
}

class ZomatoMainPage extends StatefulWidget {
  @override
  _ZomatoMainPageState createState() => _ZomatoMainPageState();
}

class _ZomatoMainPageState extends State<ZomatoMainPage> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: IndexedStack(index: pageIdx, children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add_location,
                          color: Colors.red,
                        ),
                        Text(
                          "657-Mars, Milkyway",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 3)
                        ]),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search for restaurants, cuisines...",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 14
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: Center(
                              child: Text('Delivery',style: GoogleFonts.montserrat(),),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text("Self Pickup",style: GoogleFonts.montserrat(),),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: Container(
                    height: screenHeight / 4,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.only(right: 8),
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 8,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: Container(
                    height: screenHeight / 15,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: screenHeight / 3,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 2"),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 3"),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 4"),
                )
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        currentIndex: pageIdx,
        onTap: (index) {
          setState(() {
            pageIdx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: Text("Order")),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run), title: Text("Go Out")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("Gold")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_queue), title: Text("Sneakpeek"))
        ],
      ),
    );
  }
}
