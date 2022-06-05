import 'package:flutter/material.dart';
class Screen4 extends StatefulWidget {
  const Screen4({ Key? key }) : super(key: key);

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  bool SearchState = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner :false,
      theme: ThemeData(
      primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions:<Widget>[
            !SearchState?IconButton(icon: Icon(Icons.search,color:Colors.white),onPressed: (){
              setState(() {
                SearchState = !SearchState;
              });
            },):
            IconButton(icon: Icon(Icons.cancel,color:Colors.white),onPressed: (){
              setState(() {
                SearchState = !SearchState;
              });
            },)
          ],
          title: !SearchState?Text("WELCOME"):
                              TextField(
                                
                                decoration:InputDecoration(icon: Icon(Icons.search),
                                hintText: "Search...",
                                hintStyle: TextStyle(color: Colors.white)
                                )
                              )
        ),
        
        body: Container(child: Text("wellcome"),)
      ),

    );
  }
}