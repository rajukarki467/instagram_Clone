import 'package:flutter/material.dart';

class UiHelper {
  static CustomTexField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0xff121212),
        border: Border.all(color: Color(0xffffffff)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        keyboardType: textinputtype,
        controller: controller,
        obscureText: tohide,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Color(0xffffffff),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset('assets/images/$imgurl');
  }
}
