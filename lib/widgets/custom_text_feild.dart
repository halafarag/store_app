import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  CustomTextFeild(
      { this.onChanged, this.hintText, this.obscureText = false,this.inputType});
  Function(String)? onChanged;
  String? hintText;
  bool? obscureText;
  TextInputType? inputType ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(16)),
        enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(16)
          ),
        border:const  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          ,
      ),
      ),
    );
  }
}
