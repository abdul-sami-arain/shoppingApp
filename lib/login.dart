import 'package:flutter/material.dart';
import 'package:shoppingapp/data.dart';
import 'package:shoppingapp/firstpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shoppingapp/frontPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  Widget build(BuildContext context) {

  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController= TextEditingController();

  void login() async{
    final String useremail = userEmailController.text;
    final String userpassword = userPasswordController.text;
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;

    print(useremail);
    print(userpassword);
   
     try {
       CircularProgressIndicator();
       final UserCredential user =await auth.signInWithEmailAndPassword(email: useremail, password: userpassword);
       final DocumentSnapshot snapshot = await db.collection("user").doc(user.user.uid).get();
       final data = snapshot.data();
       final username = data["username"];
       final downloadUrl =data["url"];
       final address =data["address"];
       final Number = data["usernumber"];
        print(data);
        print(user.user.uid);
        print(username);
        
       Navigator.push(context, MaterialPageRoute(
         builder: (context)=> Data(uid: user.user.uid, email: useremail, url: downloadUrl, name: username , address:address, number:Number ,
         )
         ));
    } catch (e) {
      print(e);
      
      showDialog(context: context, builder:(BuildContext context){
        return AlertDialog(content: Text("something went wrong"),);
      } );
     
      
    }

   
  
  }



    return MaterialApp(
      debugShowCheckedModeBanner :false,
      theme: ThemeData(
    primarySwatch: Colors.amber,
      ),
      home: Scaffold(
      appBar: AppBar(
      leading: IconButton(icon:Icon(Icons.arrow_back_sharp), color: Colors.white,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> LandingPage()
            ));
          },
        ),
      title: Text("LOG IN",style: TextStyle(color: Colors.white),),
       ),
       backgroundColor: Colors.white,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
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
                  controller:userPasswordController ,
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
              TextButton(              
            onPressed:login,
            child: Text("Log In",style: TextStyle(fontSize: 20),),
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