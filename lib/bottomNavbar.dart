import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shoppingapp/screen1.dart';
import 'package:shoppingapp/screen2.dart';
import 'package:shoppingapp/screen3.dart';
import 'package:shoppingapp/screen4.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;

  Widget currentScreen = Screen1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        color: Color(0xff2b6777),
        child: Container(
          height: 60,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen1();
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.home_outlined,
                        color: currentTab == 0 ? Color(0xff99D4D3) : Colors.white,
                        size: currentTab == 0 ? 50 : 30,
                        )
                        )
                        ,
                MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen2();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.shopping_cart_outlined,
                        color: currentTab == 1 ? Color(0xff99D4D3) : Colors.white,
                        size: currentTab == 1 ? 50 : 30,
                        )),

                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen3();
                        currentTab = 4;
                      });
                    },
                    child: Icon(Icons.chat_outlined,
                        color: currentTab == 4 ? Color(0xff99D4D3) : Colors.white,
                        size: currentTab == 4 ? 50 : 30,
                        )),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Screen4();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.favorite_border_outlined,
                        color: currentTab == 3 ? Color(0xff99D4D3) : Colors.white,
                        size: currentTab == 3 ? 50 : 30,
                        )),
              ]),
        ),
      ),
      
    );
  }
}