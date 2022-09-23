import 'package:flutter/material.dart';
import 'package:learn/view/components/core/defaultbutton.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/pages/sections.dart';
import 'package:learn/view/pages/settings.dart';

class logout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AlertDialog(
        title:Text("Logout"),
        content: Text("Are you sure ?",style: TextStyle(fontSize: 20.0),),
        actions: [
          Row(
            children: [
              Expanded(child: defaultbutton(onbuttonpressed: (){navigateTo(context, settings());},text: "cancel",toggle:false,)),
              SizedBox(width: 20.0,),
              Expanded(child: defaultbutton(onbuttonpressed: (){},text: "sure",toggle:true )),

            ],
          ),


        ],
      ),
    );
  }
}
