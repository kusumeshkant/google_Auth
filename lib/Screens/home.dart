
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_auth/variabes/const.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    print("@#@@###@#@#@#@@$user");

    return Scaffold(
      appBar: AppBar(
        title: Text("User Detail",
          style: Style.h6(Style.primary),
      ),),
      body: Container(
        height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Style.primary,
                    child:Image.network(user.photoURL!),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'Name: '+ user.displayName! ,
                    style: Style.h6(Style.primary),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'Email: ' +user.email!,
                    style: Style.h6(Style.primary),
                  ),
                            ],
              ),
            ),
          )

    );
  }
}
