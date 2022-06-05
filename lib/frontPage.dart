import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/login.dart';
import 'package:shoppingapp/register.dart';
class LandingPage extends StatefulWidget {
 final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  
  Widget build(BuildContext context) {
  
    return  Center(
      child: Container(

        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
          Container(
            child: Image.asset('assets/images/logo.png',height: 150,width: 150,),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: TextButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(
              builder: (context)=> Login()
           ));
            } , 
            child: Text("LOG IN",style: TextStyle(fontSize: 20),),
            style:ButtonStyle(
              
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(160, 20, 160, 20)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(  
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.amber)
              )
              )
            )
            ),
          ),
          Container(
            child: TextButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> Signup()
            ));
            } , 
            child: Text("SIGN UP",style: TextStyle(fontSize: 20),),
            style:ButtonStyle(
              
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(160, 20, 160, 20)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.amber),
              shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(  
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: Colors.amber)
              )
              )
            )
            ),
          ),
        ],),
      ),
    );
  }
}