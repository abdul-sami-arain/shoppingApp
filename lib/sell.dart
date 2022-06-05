import 'package:flutter/material.dart';
import 'package:shoppingapp/screen1.dart';

class SellForm extends StatefulWidget {
  const SellForm({ Key? key }) : super(key: key);

  @override
  _SellFormState createState() => _SellFormState();
}

class _SellFormState extends State<SellForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false,
      theme: ThemeData(
      primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,  
        title: Text("SIGN UP",style: TextStyle(color: Colors.white),),
          leading: IconButton(icon:Icon(Icons.arrow_back_sharp), color: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> Screen1()
            ));
          },
        )
        ),
      body:Column(
        children: [
          TextButton(              
              onPressed:(){
                
              },
              
              child: Text("Sign Up",style: TextStyle(fontSize: 20),),
              style:ButtonStyle(              
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(100, 10, 100, 10)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(  
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.amber,width: 3)                
                )
                )
              )
              ),
          TextButton(              
              onPressed:(){
                
              },
              
              child: Text("Sign Up",style: TextStyle(fontSize: 20),),
              style:ButtonStyle(              
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(100, 10, 100, 10)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(  
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: Colors.amber,width: 3)                
                )
                )
              )
              ),    
        ],
      )
      ),
    );
  }
}