import 'package:flutter/material.dart';

Widget gridviewcard({
  required String text,
  required Function function,
  required Icon icon,

}){
  return    Container(
    child: Card(
      child:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: AlignmentDirectional.center,
              children: [
                CircleAvatar(backgroundColor: Colors.grey.shade300,maxRadius: 30.0),
            IconButton(onPressed: (){function();}, icon: icon,color: Colors.deepOrange,iconSize: 50.0),
          ]),
          Text(text,style: TextStyle(color: Colors.deepOrange,fontSize: 20.0,fontWeight: FontWeight.bold),),

        ],
      ),

    ),
  );

}