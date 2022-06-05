import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:shoppingapp/bottomNavbar.dart';
import 'package:shoppingapp/screen1.dart';



class Data extends StatelessWidget {
 late String uid,email,url,name,address,number;
  Data({required this.uid,required this.email,required this.url,required this.name,required this.address,required this.number});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.amber,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("User Profile")),
        ),
      body: Center(
        child: Column(
      
          children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child:CircleAvatar(
              radius: 100,
                backgroundImage: NetworkImage(url),
            ),         
            ),
          Container(
                height: 70.0,
                width: 400,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: Colors.blue,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),    
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                  child: Icon(Icons.person,color: Colors.blue,size: 40,)
                  ),
                Text("${name}",style: TextStyle(
                    fontSize: 20.0,
                    color:Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400,
                    decoration:TextDecoration.underline,
                ),
                ),
              ],
            ),
          ),  
          Container(
             height: 70.0,
                width: 400,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: Colors.blue,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),    
            margin: EdgeInsets.only(top: 10),
            child:Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                  child: Icon(Icons.mail,color: Colors.blue,size: 40,)
                  ),
                Text("${email}",style: TextStyle(
                    fontSize: 20.0,
                    color:Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400,
                    decoration:TextDecoration.underline,
                ),
                ),
              ],
            ),
          ),
          Container(
                height: 70.0,
                width: 400,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: Colors.blue,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),    
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                  child: Icon(Icons.phone,color: Colors.blue,size: 40,)
                  ),
                Text("${number}",style: TextStyle(
                    fontSize: 20.0,
                    color:Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400,
                    decoration:TextDecoration.underline,
                ),
                ),
              ],
            ),
          ),
          Container(
                height: 70.0,
                width: 400,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2.0,
                color: Colors.blue,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),    
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                  child: Icon(Icons.home_filled,color: Colors.blue,size: 40,)
                  ),
                Text("${address}",style: TextStyle(
                    fontSize: 12.0,
                    color:Colors.blueGrey,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w400,
                    decoration:TextDecoration.underline,
                ),
                ),
              ],
            ),
          ),
        Container(
          child: ElevatedButton( 
            child: Text("Let's start"),
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(
              builder: (context)=> BottomNavigation()
            ));
            },
           ),
        )
        ],
        ),
      ),  
      ),
    );
  }
}

 // Text("Name:${name}"),
          //   Text("Email:${email}"),
          //   Text("ImgUrl:${url}"),
          //   Text("Uid:${uid}"),