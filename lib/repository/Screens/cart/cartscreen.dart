import 'package:flutter/material.dart';
import 'package:package_delivery_app/Widgets/UiHelper.dart';

class cartscreen extends StatefulWidget {
  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                // color: Color(0XFFF5B301),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),

                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: UiHelper.customeText(
                        text: "Blinkit in",
                        color: Color(0XFF000000),
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
                            text:
                                "- Bhushan Dudhal, Pathardi (Nagar)",
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
                  // backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
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
          
          SizedBox(height: 10,),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
            
              
            UiHelper.customeImage(img: "cart.png"),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                UiHelper.customeText(text: "Reordering will be easy", color: Colors.black, fontweght: FontWeight.w700, fontSize: 16,fontfamily: 'bold'),
                UiHelper.customeText(text: "Items you order will show up here so you can buy", color: Colors.black, fontweght:FontWeight.w700, fontSize: 11,fontfamily: 'regular'),
                  UiHelper.customeText(text: "them again easily.", color: Colors.black, fontweght:FontWeight.w700, fontSize: 11,fontfamily: 'regular')
              ],
            ),
                     SizedBox(
            height: 20,
                     ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                 Row(
                  children: [
                      UiHelper.customeText(text: "Bestsellers", color: Colors.black, fontweght: FontWeight.w700, fontSize: 16,fontfamily: 'bold'),
                  ],
                 ),
                  SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 165,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.customeImage(img:"milk.png"),
                            Text("Amul Taaza Toned",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            Text("Fresh Milk",style: TextStyle(fontSize: 11),),
                   
                            UiHelper.customeText(text: "₹ 40", color: Colors.black, fontweght: FontWeight.bold, fontSize:15,fontfamily: 'bold')
                   
                   
                          ],
                        ),
                      ),
                       Container(
                        height: 165,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.customeImage(img:"potato.png"),
                            Text("Amul Taaza Toned",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            Text("Fresh Milk",style: TextStyle(fontSize: 11),),
                   
                            UiHelper.customeText(text: "₹ 37", color: Colors.black, fontweght: FontWeight.bold, fontSize:15,fontfamily: 'bold')
                   
                   
                          ],
                        ),
                      ),
                       Container(
                        height: 165,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.customeImage(img:"tomato.png"),
                            Text("Amul Taaza Toned",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            Text("Fresh Milk",style: TextStyle(fontSize: 11),),
                   
                            UiHelper.customeText(text: "₹ 27", color: Colors.black, fontweght: FontWeight.bold, fontSize:15,fontfamily: 'bold')
                   
                   
                          ],
                        ),
                      ),
                   
                   
                        Container(
                        height: 165,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.customeImage(img:"milk.png"),
                            Text("Amul Taaza Toned",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            Text("Fresh Milk",style: TextStyle(fontSize: 11),),
                   
                            UiHelper.customeText(text: "₹ 40", color: Colors.black, fontweght: FontWeight.bold, fontSize:15,fontfamily: 'bold')
                   
                   
                          ],
                        ),
                      ),
                       Container(
                        height: 165,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.customeImage(img:"potato.png"),
                            Text("Amul Taaza Toned",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            Text("Fresh Milk",style: TextStyle(fontSize: 11),),
                   
                            UiHelper.customeText(text: "₹ 37", color: Colors.black, fontweght: FontWeight.bold, fontSize:15,fontfamily: 'bold')
                   
                   
                          ],
                        ),
                      ),
                       Container(
                        height: 165,
                        width: 100,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.customeImage(img:"tomato.png"),
                            Text("Amul Taaza Toned",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            Text("Fresh Milk",style: TextStyle(fontSize: 11),),
                   
                            UiHelper.customeText(text: "₹ 27", color: Colors.black, fontweght: FontWeight.bold, fontSize:15,fontfamily: 'bold')
                   
                   
                          ],
                        ),
                      ),
                    ],
                   ),
                 )
                ],
              ),
            )
            ]),
          )
        ],
      ),
    );
  }
}
