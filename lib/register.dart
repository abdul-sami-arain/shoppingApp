import 'dart:io';
import 'dart:math';
import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';
import 'package:shoppingapp/data.dart';
import 'package:shoppingapp/firstpage.dart';
import 'package:shoppingapp/frontPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';
class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // ignore: unused_field
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  
  late String imagePath;
  late String uid;
  late String url;
  late String email;
  late String name;
  late String profile; 

  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('user').snapshots();
  

  final TextEditingController userEmailController = TextEditingController(text: "sami@gmail.com");
  final TextEditingController userPasswordController= TextEditingController(text:"sixtytwo");
  final TextEditingController userName = TextEditingController( );
  final TextEditingController userNumber = TextEditingController( );
  final TextEditingController address = TextEditingController( );
  void imagePick() async {
    final ImagePicker _picker =ImagePicker();
    final image = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      imagePath=image.path;
    });
}
  void register() async{
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final String username = userName.text;
    final String useremail = userEmailController.text;
    final String userpassword = userPasswordController.text;
    final String usernumber = userNumber.text;
    final String Address = address.text;
    print(useremail);
    print(userpassword);

    try {
 
    final UserCredential user = await auth.createUserWithEmailAndPassword(email: useremail ,password: userpassword);
    String imageName = path.basename(imagePath);
    firebase_storage.FirebaseStorage storage =
    firebase_storage.FirebaseStorage.instance;
    firebase_storage.Reference ref =
    firebase_storage.FirebaseStorage.instance.ref('/$imageName');
     File file =File(imagePath);
    await ref.putFile(file);
    String downloadUrl = await ref.getDownloadURL();
    print("image uploaded succesfully");
    // db.collection("posts").add(
    //   {
    //     "url" : downloadUrl
    //   }
    // );
    db.collection("user").doc(user.user.uid).set({
       "username":username,
       "usernumber":usernumber,
       "address":Address,
       "email":useremail,
       "password":userpassword,
       "url" : downloadUrl,
       "user_uid": user.user.uid,
       "id" : user.user.tenantId
     });

   
    
  

     Navigator.push(context, MaterialPageRoute(
              builder: (context)=> Data(name: username ,email: useremail,uid: user.user.uid,url: downloadUrl, number:usernumber , address:Address ,)
            ));
    print("object");
    } catch (e) {
          print(e);
    }

  }

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
              builder: (context)=> LandingPage()
            ));
          },
        )
       ),
       body:   ListView(
          //  mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
                  margin: EdgeInsets.only(bottom: 20,top: 40),
                  child: TextFormField(
                    controller: userName ,
                        decoration:  InputDecoration(
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.amber, width: 3),
                          ),
                          labelText: "Username",
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            color: Colors.amber
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.green, width: 3),
                        ),
                        ), 
                        ),
                ),
             Container(
               margin: EdgeInsets.only(bottom: 20),
               child: TextFormField(
                controller: userEmailController,
                        decoration:  InputDecoration(
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.amber, width: 3),
                          ),
                          labelText: "Enter Email",
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            color: Colors.amber
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.green, width: 3),
                        ),
                        ), 
                        ),
             ),
             Container(
               margin: EdgeInsets.only(bottom: 20),
               child: TextFormField(
                controller: userNumber,
                        decoration:  InputDecoration(
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.amber, width: 3),
                          ),
                          labelText: "Enter Phone Number",
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            color: Colors.amber
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.green, width: 3),
                        ),
                        ), 
                        ),
             ),
             Container(
               margin: EdgeInsets.only(bottom: 20),
               child: TextFormField(
                controller: address,
                        decoration:  InputDecoration(
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.amber, width: 3),
                          ),
                          labelText: "Address",
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            color: Colors.amber
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.green, width: 3),
                        ),
                        ), 
                        ),
             ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: TextFormField(
                    
                    controller: userPasswordController ,
                    obscureText: true,
                        decoration:  InputDecoration(
                          enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(16),
                             borderSide: BorderSide(color: Colors.amber, width: 3),
                          ),
                          labelText: "Password",
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            color: Colors.amber
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.green, width: 3),
                        ),
                        ), 
                        ),
                ),
                Container(
                      child:TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                        onSurface: Colors.red,
                      ),
                      onPressed: imagePick,
                      child: Text('Pick your Profile'),
                    ) ,
                  ),
                
              
              
           ],
         ),
       ),
      
    );
  }
}