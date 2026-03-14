import 'dart:async';

import 'package:flutter/material.dart';
import 'package:package_delivery_app/Widgets/UiHelper.dart';
import 'package:package_delivery_app/domain/constants/appcolors.dart';
import 'package:package_delivery_app/repository/Screens/login/loginscreen.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => splashscreenState();
}

class splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    {
      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Loginscreen()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [UiHelper.customeImage(img: "image1.png")],
        ),
      ),
    );
  }
}
