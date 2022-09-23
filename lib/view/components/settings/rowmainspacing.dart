import 'package:flutter/material.dart';

Widget rowmainspacing({
  String text="",
 required Function function,
}){
  return             Column(
  children: [
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text(text,
  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
  IconButton(onPressed: (){function();},
  icon: Icon(Icons.arrow_forward_ios) )


  ],
  ),
  Divider(color: Colors.grey,
  thickness: 1.0,
  ),

  ],
  );

}