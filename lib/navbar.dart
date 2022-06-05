import 'package:flutter/material.dart';
class Navbar extends StatefulWidget {
  const Navbar({ Key? key }) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  @override
  Widget build(BuildContext context) {    
    return Drawer(
      child: ListView(
          // Important : Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [                                     
            Container(
              child: UserAccountsDrawerHeader(
                accountName: Text("data"),
                accountEmail: Text("1"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/2/21/Web_of_Spider-Man_Vol_1_129-1.png"),
                ),
                )
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ), 
          ],
        ),
      
    );
  }
}