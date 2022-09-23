import 'package:flutter/material.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/pages/ODC.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class events extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(' Midteterms ' ,
          style: TextStyle(color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold)
          ,
        ),
        leading: IconButton(
          onPressed: (){navigateTo(context, odc());},
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.deepOrange,),
      ),


      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: SfCalendar(
            view: CalendarView.month,
             todayHighlightColor: Colors.orange,

          ),
        ),
      ),
    );
  }
}

