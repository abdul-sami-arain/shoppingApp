import 'package:carousel_slider/carousel_slider.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/bottomNavbar.dart';
import 'package:shoppingapp/sell.dart';

class Screen1 extends StatefulWidget {
  const Screen1({ Key? key }) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool SearchState = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Slider',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
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
        body: 
         SingleChildScrollView(
           child: Column(
            children: [
              CarouselSlider(
                items: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/cs1.jpg',height: 300,width: 300,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/cs2.png',height: 300,width: 300,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/cs3.jpg',height: 300,width: 300,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/cs4.jpg',height: 300,width: 300,),
                  )
                ],
                //Slider Container properties
                options: CarouselOptions(
                  autoPlay: true,
                ),
              ),

            Container(
              child: Text("Categories",style: TextStyle(
                              fontSize: 25.0,
                              color:Colors.black,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w500,                                                    
                          ),
                                                  ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: GestureDetector( 
                                onTap: () { 
                                   
                                }, 
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                            radius: 40,
                                            backgroundColor: Colors.amber,
                                            child: Icon(FontAwesomeIcons.mobileAlt,
                                            size: 40,
                                            color: Colors.black,
                                            )
                                          ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Mobile",style: TextStyle(
                                                      fontSize: 15.0,
                                                      color:Colors.black,
                                                      letterSpacing: 2.0,
                                                      fontWeight: FontWeight.w500,                                                    
                                                  ),
                                      ),
                                    )      
                                  ],
                                ),
                            )                
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),  
                      child: GestureDetector( 
                                onTap: () { 
                                   print("object");
                                }, 
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.blueGrey,
                                            child: Icon(FontAwesomeIcons.car,
                                            size: 40,
                                            color: Colors.black,
                                            )
                                          ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Cars",style: TextStyle(
                                                        fontSize: 15.0,
                                                        color:Colors.black,
                                                        letterSpacing: 2.0,
                                                        fontWeight: FontWeight.w500,                                                    
                                                    ),),
                                    )      
                                  ],
                                ),
                            )                
                      ),
                      
                      Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),  
                      child: GestureDetector( 
                                onTap: () { 
                                   
                                }, 
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.yellow,
                                      radius: 40,
                                            child: Icon(Icons.electrical_services,
                                            size: 40,
                                            color: Colors.grey,)
                                          ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Electronics",style: TextStyle(
                                                        fontSize: 15.0,
                                                        color:Colors.black,
                                                        letterSpacing: 2.0,
                                                        fontWeight: FontWeight.w500,                                                    
                                                    ),),
                                    )      
                                  ],
                                ),
                            )                
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),  
                      child: GestureDetector( 
                                onTap: () { 
                                   
                                }, 
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.indigo,
                                      radius: 40,
                                            child: Icon(Icons.bike_scooter,
                                            size: 40,
                                            color: Colors.black,)
                                          ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Bikes",style: TextStyle(
                                                        fontSize: 15.0,
                                                        color:Colors.black,
                                                        letterSpacing: 2.0,
                                                        fontWeight: FontWeight.w500,                                                    
                                                    ),),
                                    )      
                                  ],
                                ),
                            )                
                      ),
                      Container(
                       margin: EdgeInsets.fromLTRB(20, 10, 10, 10), 
                      child: GestureDetector( 
                                onTap: () { 
                                   
                                }, 
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.lime,
                                      radius: 40,
                                            child: Icon(FontAwesomeIcons.building,
                                            size: 40,
                                            color: Colors.black,)
                                          ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Factories",style: TextStyle(
                                                        fontSize: 15.0,
                                                        color:Colors.black,
                                                        letterSpacing: 2.0,
                                                        fontWeight: FontWeight.w500,                                                    
                                                    ),),
                                    )      
                                  ],
                                ),
                            )                
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),  
                      child: GestureDetector( 
                                onTap: () { 
                                   
                                }, 
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: 40,
                                            child: Icon(FontAwesomeIcons.chair,
                                            size: 40,
                                            color: Colors.black,)
                                          ),
                                     Container(
                                       margin: EdgeInsets.only(top: 5),
                                       child: Text("Furniture",style: TextStyle(
                                                        fontSize: 15.0,
                                                        color:Colors.black,
                                                        letterSpacing: 2.0,
                                                        fontWeight: FontWeight.w500,                                                    
                                                    ),),
                                     )     
                                  ],
                                ),
                            )                
                      ),
                      Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 10, 10),  
                      child: GestureDetector( 
                                onTap: () { 
                                   
                                }, 
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.lightGreen,
                                      radius: 40,
                                            child: Icon(FontAwesomeIcons.shirtsinbulk,
                                            size: 40,
                                            color: Colors.black,)
                                          ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text("Clothing",style: TextStyle(
                                                        fontSize: 15.0,
                                                        color:Colors.black,
                                                        letterSpacing: 2.0,
                                                        fontWeight: FontWeight.w500,                                                    
                                                    ),),
                                    )      
                                  ],
                                ),
                            )                
                      ),
                  ],
                ),
              ),
            ) ,
                                

            ],
                 ),
                  
                 
         ),
         
      floatingActionButton:Align(
        alignment: Alignment.bottomCenter,
        child:FloatingActionButton(
          onPressed:(){
             Navigator.push(context, MaterialPageRoute(
              builder: (context)=> SellForm()
            ));
          } ,
          child:Icon(Icons.add) ,) ,
        ) ,
      )
    );
  }
}