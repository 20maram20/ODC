import 'package:flutter/material.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/components/sections/card.dart';
import 'package:learn/view/pages/ODC.dart';


class sections extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('sections' ,
          style: TextStyle(color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold)
          ,
        ),
        leading: IconButton(
          onPressed: (){},
          icon: IconButton(onPressed: (){navigateTo(context, odc());}, icon:Icon(Icons.arrow_back_ios,color: Colors.deepOrange,)),),
        actions: [PopupMenuButton(
          //child: Icon(),
          icon: IconButton(onPressed: (){},
            icon: Icon(Icons.filter_alt,color: Colors.deepOrange),),
          
            itemBuilder: (context)=>[
              PopupMenuItem(
                  child: Text("ALL sections")
              ),
              PopupMenuItem(
                  child: Text("finished sections")
              ),
              PopupMenuItem(
                  child: Text("remaining sections")
              ),



            ]
        )],

     // IconButton(onPressed: (){navigateTo(context, odc());}, icon:Icon(Icons.filter_alt,color: Colors.orange,)),
      ),
      body:  Column(
        children: [
          buildcard(
              name: "flutter",
              time: "2 hrs",
              day: "sunday",
            starttime: "12:00pm",
            endtime: "2:00pm",
          ),
          buildcard(
            name: "java",
            time: "2 hrs",
            day: "monday",
            starttime: "12:00pm",
            endtime: "2:00pm",
          ),
          buildcard(
            name: "react",
            time: "2 hrs",
            day: "saturday",
            starttime: "12:00pm",
            endtime: "2:00pm",
          ),

        ],
      )
      ,

    );
  }
}

