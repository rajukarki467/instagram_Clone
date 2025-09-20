import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Color(0xff3797ef)),
      ),
    );
  }

  static CustomTexField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType textinputtype,
  }) {
    return Center(
      child: Container(
        height: 45,
        width: 340,
        decoration: BoxDecoration(
          color: Color(0xff121212),
          border: Border.all(color: Color(0xffffffff)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextField(
            keyboardType: textinputtype,
            controller: controller,
            obscureText: tohide,
            decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade700,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset('assets/images/$imgurl');
  }

  static CustomButton({
    required String buttonname,
    required VoidCallback callback,
  }) {
    return SizedBox(
      height: 50,
      width: 340,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        child: Center(
          child: Text(
            buttonname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff3797ef),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
