

import 'package:flutter/material.dart';
import 'package:package_delivery_app/Widgets/UiHelper.dart';

class printscreen extends StatefulWidget{
  @override
  State<printscreen> createState() => _printscreenState();
}

class _printscreenState extends State<printscreen> {
  TextEditingController searchController =TextEditingController();

  @override
  Widget build(BuildContext context){
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
                      suffixIcon: Icon(Icons.mic),

                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),

      SingleChildScrollView(
          child: Container(
                       color: Color(0XFFFBF0CE),
                       width: double.maxFinite,
                       height: 533,
                       child:Expanded(
                         child: Column(
                           children: [
                             SizedBox(
                               height: 50,
                             ),
                             UiHelper.customeText(text: "Print Store", color:Colors.black, fontweght: FontWeight.bold, fontSize: 30,fontfamily: 'bold'),
                             UiHelper.customeText(text: "Blinkit ensures secure prints at every stage", color:Color(0XFF9C9C9C), fontweght: FontWeight.w700, fontSize: 14),
                             SizedBox(height: 50,),
                                 
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Card(
                                elevation: 10,
                                 child: Container(
                                       margin: EdgeInsets.all(15),
                                       padding: EdgeInsets.all(15),
                                     
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(10),
                                       ),
                                     
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                     
                                           Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                     
                                      Text(
                                        "Documents",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'bold'),
                                      ),
                                      SizedBox(height: 10,),
                                     
                                     UiHelper.customeText(text: "✧  Price starting at rs 3/page", color: Colors.black, fontweght: FontWeight.w600, fontSize: 14),
                                       UiHelper.customeText(text: "✧  Paper quality: 70 GSM", color: Colors.black, fontweght: FontWeight.w600, fontSize: 14),
                                         UiHelper.customeText(text: "✧  Single side prints", color: Colors.black, fontweght: FontWeight.w600, fontSize: 14),
                                    
                                      SizedBox(height: 18),
                                     Container(
                                      width: 150,
                                      height: 40,
                                          decoration: BoxDecoration(
                                             color: Color(0XFF27AF34),
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                       
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          child:Text("Upload File",style: TextStyle(color: Colors.white,fontFamily: 'regular',fontWeight: FontWeight.w600),),style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF27AF34),elevation: 0,side: BorderSide.none),),
                                        ),
                                     
                                             ],
                                           ),
                                     
                                           Icon(Icons.description, size: 75)
                                     
                                         ],
                                       ),
                                     ),
                               ),
                            )
                           ],
                         ),
                       ),
                       
          
          ),
        )
        ],
      ),
    );
  }
}


  




  