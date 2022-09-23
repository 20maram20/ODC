import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          children: [
            Text('Orange ' ,
              style: TextStyle(color: Colors.deepOrange,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)
              ,
            ),
            Text('Digital Center ' ,
              style: TextStyle(color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)
              ,
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign Up',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              TextField(keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  labelText: "Name",
                  filled: true,
                  fillColor: Colors.white,

                ),
                style: TextStyle(
                    fontSize:20.0),

              ),
              SizedBox(height: 20.0,),
              TextField(keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  labelText: "E-Mail",
                  filled: true,
                  fillColor: Colors.white,

                ),
                style: TextStyle(
                    fontSize:20.0),

              ),
              SizedBox(height: 20.0,),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.grey.shade300)),
                    labelText: "password",
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon:IconButton(
                      onPressed: (){},
                      icon:Icon(CupertinoIcons.eye_slash_fill),
                      color: Colors.deepOrange,)

                ),
                style: TextStyle(
                    fontSize:20.0),

              ),
              SizedBox(height: 20.0,),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Colors.grey.shade300)),
                    labelText: "password",
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon:IconButton(
                      onPressed: (){},
                      icon:Icon(CupertinoIcons.eye_slash_fill),
                      color: Colors.deepOrange,)

                ),
                style: TextStyle(
                    fontSize:20.0),

              ),
              SizedBox(height: 20.0,),
              TextField(keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  labelText: "Phone Number",
                  filled: true,
                  fillColor: Colors.white,

                ),
                style: TextStyle(
                    fontSize:20.0),

              ),
              SizedBox(height: 20.0,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Gender",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:20.0),),
                      SizedBox(
                        width: 70,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Universty",
                        style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:20.0),),
                      SizedBox(
                        width: 70,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text("Grade",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:20.0),),
                    SizedBox(
                      width: 70,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),


              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10.0),

                ),
                child: MaterialButton(onPressed: (){

                },
                  child: Text("Sign Up",
                    textAlign:TextAlign.center ,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                      fontSize: 20.0,
                    ),),),
              ),
              Row(
                children: [
                  Expanded(child:
                  Divider(color: Colors.grey,
                    thickness: 1.0,
                  )),
                  SizedBox(width: 10.00,),
                  Text("OR",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),),
                  SizedBox(width: 10.00,),
                  Expanded(
                    child: Divider(color: Colors.grey,
                      thickness: 1.0,
                    ),
                  ),
                  SizedBox(height: 40.00,),

                ],
              ),
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.deepOrange),
                ),
                child: MaterialButton(onPressed: (){

                },
                  child: Text("Log in",
                    textAlign:TextAlign.center ,
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight:FontWeight.bold,
                      fontSize: 20.0,
                    ),),),
              ),






            ],
          ),
        ),
      ),

    );
  }
}
