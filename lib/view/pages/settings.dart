import 'package:flutter/material.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/components/settings/rowmainspacing.dart';
import 'package:learn/view/pages/ODC.dart';
import 'package:learn/view/pages/faq.dart';
import 'package:learn/view/pages/logout.dart';
import 'package:learn/view/pages/ourpartners.dart';
import 'package:learn/view/pages/support.dart';

class settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Settings ' ,
          style: TextStyle(color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold)
          ,
        ),
        leading: IconButton(
          onPressed: (){navigateTo(context, odc());},
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            rowmainspacing(text: "FAQ",
                function:(){
              navigateTo(context, faq());
                },),

           rowmainspacing(text: "Terms and Conditions",
              function: (){
              navigateTo(context, odc());
           },),
            rowmainspacing(text: "our partners",
              function: (){
                navigateTo(context, ourpartners());
              },),
            rowmainspacing(text: "support",
              function: (){
                navigateTo(context, support());
              },),
            rowmainspacing(text: "log out",
              function: (){
                navigateTo(context, logout());
              },),

     ],
        ),
      ),


    );
  }
}
