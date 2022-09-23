import 'package:flutter/material.dart';

Widget buildcard({
  String name = " ",
  String time = " ",
  String day = " ",
  String starttime = " ",
  String endtime = " ",
})
{
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.access_alarms),color: Colors.black),
                  Text(time),
                ],
              ),



            ],
          ),
          SizedBox(height: 10.0,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('section day ' ,
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey
                    )
                    ,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month),color: Colors.black),
                      Text(day  ,
                        style: TextStyle(
                          fontSize: 15.0,
                        )
                        ,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text('start time ' ,
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey

                    )
                    ,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.watch_later_rounded),color: Colors.green),

                      Text(starttime ,
                        style: TextStyle(
                          fontSize: 15.0,
                        )
                        ,
                      ),
                    ],
                  ),

                ],
              ),
              Column(
                children: [
                  Text('End time ' ,
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey

                    )
                    ,
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.watch_later_rounded),color: Colors.pinkAccent),

                      Text(endtime,
                        style: TextStyle(
                          fontSize: 15.0,
                        )
                        ,
                      ),
                    ],
                  ),

                ],
              ),


            ],
          ),


        ],
      ),
    ),

  );

}
