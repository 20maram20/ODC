import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaulttextformfield ({
  required String text,
  required Function validate,
  required TextInputType type,
  IconData? suffix,
  bool obscureText: false,


})=>TextFormField(
keyboardType: type,
 obscureText: obscureText,
//validator: validate,

decoration: InputDecoration(
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(10.0),
borderSide: BorderSide(color: Colors.grey.shade300)),
labelText: text,
filled: true,
fillColor: Colors.white,
    suffixIcon:suffix!=null?IconButton(
      onPressed: (){},
      icon:Icon(CupertinoIcons.eye_slash_fill),
      color: Colors.deepOrange,):null,


),
style: TextStyle(
fontSize:20.0),

);
