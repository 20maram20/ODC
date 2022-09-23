import 'package:flutter/material.dart';

Widget appbar({
 required String title,
 bool centerTitle2= true,
  bool




})
{
  return AppBar(
  backgroundColor: Colors.white,
  elevation: 0.0,
centerTitle: centerTitle2,
title: Text(title ,
style: TextStyle(color: Colors.black,
fontSize: 30.0,
fontWeight: FontWeight.bold)
,
),
leading: IconButton(
onPressed: (){},
icon: Icon(Icons.arrow_back_ios_new),
color: Colors.deepOrange,),
actions: [IconButton(
    onPressed: (){},
    icon:Icon(Icons.filter_alt,
      color: Colors.deepOrange,)),
],
);
}