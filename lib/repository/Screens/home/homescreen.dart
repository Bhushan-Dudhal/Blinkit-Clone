import 'package:flutter/material.dart';
import 'package:package_delivery_app/Widgets/UiHelper.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController searchController = TextEditingController();

  var homecart = [
    {"img": "image_50.png", "title": "Lights, Diyas & Candles"},
    {"img": "image51.png", "title": "Lights, Diyas & Candles"},
    {"img": "image53.png", "title": "Lights, Diyas & Candles"},
    {"img": "image_50.png", "title": "Lights, Diyas & Candles"},
    {"img": "image_50.png", "title": "Lights, Diyas & Candles"},
    {"img": "image_50.png", "title": "Lights, Diyas & Candles"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// HEADER
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFEC0505),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: UiHelper.customeText(
                        text: "Blinkit in",
                        color: Colors.white,
                        fontweght: FontWeight.bold,
                        fontSize: 15,
                        fontfamily: "bold",
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: UiHelper.customeText(
                        text: "16 minutes",
                        color: Colors.white,
                        fontweght: FontWeight.bold,
                        fontSize: 20,
                        fontfamily: "bold",
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          UiHelper.customeText(
                            text: "HOME ",
                            color: Colors.white,
                            fontweght: FontWeight.bold,
                            fontSize: 14,
                          ),

                          UiHelper.customeText(
                            text: "- Bhushan Dudhal, Pathardi (Nagar)",
                            color: Colors.white,
                            fontweght: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                right: 20,
                top: 60,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 20),
                ),
              ),

              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: TextField(
                    controller: searchController,

                    decoration: InputDecoration(
                      hintText: "Search 'ice-cream'",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// SALE SECTION
          Container(
            height: 220,
            width: double.infinity,
            color: Color(0XFFEC0505),

            child: Column(
              children: [
                SizedBox(height: 10),

                /// SALE TITLE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.customeImage(img: "image60.png"),

                    UiHelper.customeImage(img: "image55.png"),

                    UiHelper.customeText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweght: FontWeight.w700,
                      fontSize: 20,
                      fontfamily: 'regular',
                    ),

                    UiHelper.customeImage(img: "image55.png"),

                    UiHelper.customeImage(img: "image60.png"),
                  ],
                ),

                SizedBox(height: 15),

              
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homecart.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFEAD3D3),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        width: 90,
                        margin: EdgeInsets.symmetric(horizontal: 6),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                              CrossAxisAlignment.center,

                          children: [
                            Text(
                              homecart[index]['title'].toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 5),

                            UiHelper.customeImage(
                              img: homecart[index]['img'].toString(),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
