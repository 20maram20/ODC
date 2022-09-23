import 'package:flutter/material.dart';

Widget cyantextfield({
  String text='',
  bool toggel=false,

}){
  return  TextField(
    maxLines:toggel? 5:null,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomRight:Radius.circular(20.0),
            topLeft:Radius.circular(20.0), ),
          borderSide: BorderSide(color: Colors.cyan)),
      labelText: text,
      labelStyle: TextStyle(
          color: Colors.black),

    ),

  );

}