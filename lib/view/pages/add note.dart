import 'package:flutter/material.dart';
import 'package:learn/view/components/addnote/cyantextfield.dart';
import 'package:learn/view/components/core/defaultbutton.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/pages/nonote.dart';

class addnote extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Add Note ' ,
          style: TextStyle(color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold)
          ,
        ),
        leading: IconButton(
          onPressed: (){navigateTo(context, nonotes());},
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              cyantextfield(text: ("Title")),
              SizedBox(height: 20.0,),
              cyantextfield(text: ("Date")),
              SizedBox(height: 20.0,),
              cyantextfield(text: ("Note"),toggel: true),
              SizedBox(height: 20.0,),
              Container(width: 90.0,
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      Text("Add"),
                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
        

    );
  }
}
