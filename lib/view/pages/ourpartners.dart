import 'package:flutter/material.dart';
import 'package:learn/view/pages/settings.dart';

import '../components/core/navigation.dart';

class ourpartners extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Our partners ' ,
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
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ODCs",
                          style: TextStyle(color: Colors.deepOrange,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 120.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(20.0),
                            color: Colors.deepOrange,),
                          child:
                          MaterialButton(onPressed: () {},
                            child:
                            Center(
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.share),color: Colors.white,)),
                                  VerticalDivider(color: Colors.white,
                                    thickness: 3,
                                    width: 3,
                                    indent: 3,
                                    endIndent: 3,),
                                  Expanded(child: IconButton(onPressed: (){}, icon: Icon(Icons.copy),color: Colors.white,)),

                                ],
                              ),
                            ),
                          ),

                        ),
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Orange ' ,
                          style: TextStyle(color: Colors.deepOrange,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)
                          ,
                        ),
                        Text('Digital Center ' ,
                          style: TextStyle(color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)
                          ,
                        ),

                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Text("ODC Supports All Universities",
                        style: TextStyle(color: Colors.deepOrange,
                          fontSize: 20.0,)),

                  ],
                ),
              ),

            )
          ],
        ),
      ),




    );
  }
}
