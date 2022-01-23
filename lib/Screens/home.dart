
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_auth/model/model.dart';

import 'package:google_auth/variabes/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List _images =[
    Image.asset('assets/images/g1.jpg'),
    Image.asset('assets/images/g2.png'),
    Image.asset('assets/images/g3.png'),
    Image.asset('assets/images/g4.png'),


  ];



  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    print("@#@@###@#@#@#@@$user");

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: CircleAvatar(
                backgroundColor: Style.primary,
                radius: 25,
                child:Image.network(user.photoURL!),
              ),
            ),
            SizedBox(width: 30,),
            Text("User Profile",
              style: Style.h6(Style.primary),
      ),
          ],
        ),),
      body: Container(
        height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(bottom: 55),
                    height: 280,
                     width: MediaQuery.of(context).size.width,
                     color: Colors.yellow,
                    child: Image.asset('assets/images/googles-new-logo-5078286822539264.2-hp.gif')
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 550,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        color: Colors.pink
                      ),
                      child: Image.asset('assets/images/home1.png', fit: BoxFit.fill,),
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 60,),
                      Container(

                        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                            child: Image.network(user.photoURL!)),
                      ),

                      Container(
                        height: 50,

                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '    Name:    ',
                              style: GoogleFonts.inter(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.black
                              )
                            ),
                            Text(
                                 user.displayName!,
                              style: GoogleFonts.inter(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize:20,
                                  color: Colors.black,
                                decoration:TextDecoration.underline,

                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                '    Email:      ',
                                style: Style.h6(Style.primary),
                              ),
                              Text(
                                user.email!,
                                style: GoogleFonts.inter(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                    color: Colors.black,
                                  decoration:TextDecoration.underline,

                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          final provider = Provider.of<SignIN_provider>(context,  listen: false );
                          provider.Logout();
                          },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.red),
                          ),
                          child: Center(
                            child: Text(
                              'LogOut',
                              style: Style.h6(Style.primary),
                            ),
                          ),
                        ),
                      ),
                                ],
                  ),
                ],
              ),
            ),
          )

    );
  }
}
