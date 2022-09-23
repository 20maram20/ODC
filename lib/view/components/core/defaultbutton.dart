import 'package:flutter/material.dart';

Widget defaultbutton({
String text="",
  bool toggle=false,
 required Function onbuttonpressed,
  double Width=double.infinity,
})
{
  return  Container(
  width: Width,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  decoration: BoxDecoration(
    border:toggle?null:Border.all(color: Colors.deepOrange),
  color:toggle? Colors.deepOrange:Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  ),
  child: MaterialButton(onPressed: (){
    onbuttonpressed();

  },
  child: Text(text,
  textAlign:TextAlign.center ,
  style: TextStyle(
    color:toggle? Colors.white:Colors.deepOrange,
  fontWeight:FontWeight.bold,
  fontSize: 20.0,
  ),),),
);

}