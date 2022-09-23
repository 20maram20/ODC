import 'package:flutter/material.dart';
import 'package:learn/view/components/core/defaultbutton.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/pages/settings.dart';

class support extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('support' ,
          style: TextStyle(color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold)
          ,
        ),
          leading: IconButton(
            onPressed: (){navigateTo(context, settings());},
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.deepOrange,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.person) ,
                  filled:  true,fillColor: Colors.grey.shade200,

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "Name",

                ),
                style: TextStyle(
                    fontSize:20.0,
                color: Colors.grey,
                ),

              ),
              SizedBox(height: 20.0,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled:  true,fillColor: Colors.grey.shade200,

                  prefixIcon:Icon(Icons.email) ,
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "E-Mail",

                ),
                style: TextStyle(
                    fontSize:20.0,
                    color: Colors.grey),
              ),
              SizedBox(height: 20.0,),
              TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled:  true,fillColor: Colors.grey.shade200,
                    labelText: "What\'s making you unhappy ?",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.black)),

                  ),),

              SizedBox(height: 20.0,),
              defaultbutton(text: "submit", onbuttonpressed: (){},toggle: true),




            ],
          ),
        ),
      ),



    );
  }
}
