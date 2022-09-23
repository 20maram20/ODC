import 'package:flutter/material.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/pages/news.dart';

class news2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onPressed: (){navigateTo(context, news());},
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,),

      ),
      body: Column(
        children: [
          Image(image: AssetImage('images/o.jpg'),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("ODCs",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40.0),),
                Text("2022-07-06",
                  style: TextStyle(color: Colors.deepOrange),),

              ],
            ),
          ),

          Text("ODC Supports All Universties",
                style: TextStyle(color: Colors.grey,fontSize: 20.0),),


        ],
      ),


    );
  }
}
