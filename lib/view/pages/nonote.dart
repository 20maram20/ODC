import 'package:flutter/material.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/pages/ODC.dart';
import 'package:learn/view/pages/add%20note.dart';

class nonotes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(' Notes ' ,
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
      body: Center(
        child: Text("There\'s no data to show",
        style: TextStyle(
             fontSize: 30.0),),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=>addnote(),),);
        },
        child: Icon(Icons.add,color: Colors.black,),),
    );
  }
}
