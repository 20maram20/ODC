import 'package:flutter/material.dart';
import 'package:learn/view/components/core/navigation.dart';

class faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'FAQ ',
          style: TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          ExpansionTile(
              title: Text(
                'Q1:How many countries orange digital center is in ?',
              ),
              backgroundColor: Colors.deepOrange,
              collapsedBackgroundColor: Colors.deepOrange,
              collapsedTextColor: Colors.white,
              textColor: Colors.white,

              children: [
                Divider(),
                Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                      "16 countries",
                    ),
                    )),
                ]),
        ],
      ),
    );
  }
}
