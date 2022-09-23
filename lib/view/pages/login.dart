import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/view/components/core/defaulttextformfield.dart';
import 'package:learn/view/components/core/navigation.dart';
import 'package:learn/view/pages/ODC.dart';
import 'package:learn/view/pages/signup.dart';

class login extends StatelessWidget {
  int _value = 1;
  var formkey=GlobalKey<FormState>();


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
            SizedBox(width: 50.0,),
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
          child: Form(
            key: formkey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),),
                SizedBox(height: 20.0,),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if(value==null){
                      print("email cant be empty");
                    }
                    return null;
                  },

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

                TextButton(
                    onPressed: (){},
                    child: Text("Forgot password?",
                      style: TextStyle(
                          fontSize:20.0,
                          color: Colors.deepOrange,
                        decoration: TextDecoration.underline,
                      ),

                    )),
                SizedBox(height: 20.0,),
                Container(
                  width: double.infinity,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: MaterialButton(onPressed: (){
                    if(formkey.currentState!.validate())
                    {navigateTo(context, odc());}

                  },
                    child: Text("Login",
                      textAlign:TextAlign.center ,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight:FontWeight.bold,
                        fontSize: 20.0,
                      ),),),
                ),
                SizedBox(height: 5.0,),
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
                SizedBox(height: 5.0,),
                Container(
                  width: double.infinity,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.deepOrange),
                  ),
                  child: MaterialButton(onPressed: (){
                    navigateTo(context, signup());

                  },
                    child: Text("Sign up",
                      textAlign:TextAlign.center ,
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight:FontWeight.bold,
                        fontSize: 20.0,
                      ),),),
                ),
               // DropdownButton(items:[ DropdownMenuItem(child: Text("EFE"))],)




              ],
            ),
          ),
        ),
      ),



    );
  }
}
