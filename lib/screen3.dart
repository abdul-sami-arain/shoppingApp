import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:shoppingapp/data.dart';
import 'package:shoppingapp/frontPage.dart';
import 'package:shoppingapp/register.dart';



class Screen3 extends StatelessWidget {
  


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false,
      theme: ThemeData(
      primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
      body: ElevatedButton(child: Text("press"),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(
              builder: (context)=> LandingPage()
            ));
      },),  
      ),
    );
  }
  
  }




