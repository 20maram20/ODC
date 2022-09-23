import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/components/odc/gridviewcard.dart';
import 'package:learn/view/pages/events.dart';
import 'package:learn/view/pages/news.dart';
import 'package:learn/view/pages/nonote.dart';
import 'package:learn/view/pages/sections.dart';
import 'package:learn/view/pages/settings.dart';

class odc extends StatefulWidget {
  @override
  State<odc> createState() => _odcState();
}

class _odcState extends State<odc> {
int initialIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            gridviewcard(text: "lectures",icon: Icon(Icons.menu_book_rounded),function: (){navigateTo(context, sections());}),
            gridviewcard(text: "sections",icon: Icon(Icons.people),function: (){navigateTo(context, sections());}),
            gridviewcard(text: "Midterms",icon: Icon(Icons.request_page),function: (){navigateTo(context, sections());}),
            gridviewcard(text: "finals",icon: Icon(Icons.pageview),function: (){navigateTo(context, sections());}),
            gridviewcard(text: "Events",icon: Icon(Icons.calendar_month),function: (){navigateTo(context, events());}),
            gridviewcard(text: "Notes",icon: Icon(Icons.note_alt),function: (){navigateTo(context, nonotes());}),

          ],
        )
      ),
      bottomNavigationBar:Container(
      child: GNav(
      tabs:[
      GButton(icon: Icons.home_outlined,iconActiveColor: Colors.deepOrange,textColor: Colors.deepOrange,text: 'Home',iconSize: 30.0,iconColor: Colors.deepOrange,onPressed: (){      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>odc(),),);
      },),
    GButton(icon: Icons.newspaper_sharp,text: 'News',iconSize: 30.0,iconColor: Colors.deepOrange,onPressed: (){      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>news(),),);
    }),
    GButton(icon: Icons.settings,text: 'settings',iconSize: 30.0,iconColor: Colors.deepOrange,onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)=>settings(),),);

    }),
    ] ,
      activeColor: Colors.deepOrange,
      selectedIndex:initialIndex ,
        onTabChange: (index) {
          setState(() {
            initialIndex = index;
          });
        }
    ),


      ));
  }
}
