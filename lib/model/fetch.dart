import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_auth/Screens/Loging_type.dart';
import 'package:google_auth/Screens/home.dart';

class fetch extends StatefulWidget {
  const fetch({Key? key}) : super(key: key);

  @override
  _fetchState createState() => _fetchState();
}

class _fetchState extends State<fetch> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }else if (snapshot.hasData){
         // FirebaseAuth.instance.currentUser = snapshot.data;
          return HomePage();
        }else if (snapshot.hasError){
          return Center(child: Text('Something went wrong'),);
        }else{
        return Login();
      }}
    );
  }
}
