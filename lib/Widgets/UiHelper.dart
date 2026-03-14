import 'package:flutter/material.dart';

class UiHelper {
  /// Image Widget
  static Widget customeImage({required String img}) {
    return Image.asset("assets/images/$img", fit: BoxFit.cover);
  }

  /// Custom Text Widget
  static Widget customeText({
    required String text,
    required Color color,
    required FontWeight fontweght,
    String? fontfamily,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontweght,
        fontFamily: fontfamily ?? "regular",
      ),
    );
  }

  /// Custom TextField
  static Widget CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none,
        ),
      ),
    );
  }

  
}
