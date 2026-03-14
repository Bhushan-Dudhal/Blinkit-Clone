import 'package:flutter/material.dart';
import 'package:package_delivery_app/Widgets/UiHelper.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  TextEditingController searchController = TextEditingController();

  var grocerykitchen = [
    {"img": "image41.png", "text": "Vegetables & \nFruits"},
    {"img": "image42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image44.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image45.png", "text": "Biscuits & \nBakery"},
    {"img": "image42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image44.png", "text": "Dairy, Bread & \nMilk"},
  ];

  var secondgrocery = [
    {"img": "image21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image23.png", "text": "Tea & \nCoffees"},
    {"img": "image24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image25.png", "text": "Noodles & \nPacket Food"},
    {"img": "image22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image23.png", "text": "Tea & \nCoffees"},
    {"img": "image24.png", "text": "Ice Creams & \nmuch more"},
  ];

  var snacksanddrinks = [
    {"img": "image31.png", "text": "Chips &\n Namkeens"},
    {"img": "image32.png", "text": "Sweets & \nChocolates"},
    {"img": "image33.png", "text": "Drinks & \nJuices"},
    {"img": "image34.png", "text": "Sauces &\n Spreads"},
    {"img": "image35.png", "text": "Beauty &\n Cosmetics"},
    {"img": "image32.png", "text": "Sweets & \nChocolates"},
    {"img": "image33.png", "text": "Drinks & \nJuices"},
    {"img": "image34.png", "text": "Sauces &\n Spreads"},
  ];

  var household = [
    {"img": "image36.png", "text": "Detergent"},
    {"img": "image37.png", "text": "Dishwash"},
    {"img": "image38.png", "text": "Cleaning Tools"},
    {"img": "image39.png", "text": "Fresheners"},
    {"img": "image40.png", "text": "Repellents"},
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
                color: Color(0XFFF7CB45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 40),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: UiHelper.customeText(
                        text: "Blinkit in",
                        color: Colors.black,
                        fontweght: FontWeight.bold,
                        fontSize: 15,
                        fontfamily: "bold",
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: UiHelper.customeText(
                        text: "16 minutes",
                        color: Colors.black,
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
                            color: Colors.black,
                            fontweght: FontWeight.bold,
                            fontSize: 14,
                          ),

                          UiHelper.customeText(
                            text: "- Bhushan Dudhal, Pathardi (Nagar)",
                            color: Colors.black,
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
                  child: Icon(Icons.person, color: Colors.white),
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
                      suffixIcon: Icon(Icons.mic),
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// SCROLL AREA
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  SizedBox(height: 15),

                  sectionTitle("Grocery & Kitchen"),
                  buildList(grocerykitchen),

                  SizedBox(height: 15),

                  sectionTitle("More Grocery"),
                  buildList(secondgrocery),

                  SizedBox(height: 15),

                  sectionTitle("Snacks & Drinks"),
                  buildList(snacksanddrinks),

                  SizedBox(height: 15),

                  sectionTitle("Household Essentials"),
                  buildList(household),

                  SizedBox(height: 30),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  /// TITLE WIDGET
  Widget sectionTitle(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 20, bottom: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: UiHelper.customeText(
          text: text,
          color: Colors.black,
          fontweght: FontWeight.bold,
          fontSize: 16,
          fontfamily: "bold",
        ),
      ),
    );
  }

  /// LIST WIDGET
  Widget buildList(List data) {

    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(

          scrollDirection: Axis.horizontal,
          itemCount: data.length,

          itemBuilder: (context, index) {

            return Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                children: [

                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0XFFD9EBEB),
                    ),
                    child: UiHelper.customeImage(
                      img: data[index]['img'].toString(),
                    ),
                  ),

                  SizedBox(height: 5),

                  UiHelper.customeText(
                    text: data[index]['text'].toString(),
                    color: Colors.black,
                    fontweght: FontWeight.normal,
                    fontSize: 11,
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}