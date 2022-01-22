import 'package:flutter/material.dart';
import 'package:google_auth/model/model.dart';
import 'package:google_auth/variabes/const.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height*.35,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/login.jpg',
                  fit: BoxFit.fill,),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height*.63,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.orange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 52,
                      width: 343,
                      decoration: BoxDecoration(
                        border: Border.all(color: Style.primary),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '  Email',
                          border: InputBorder.none,
                          hintStyle: Style.h6(Style.primary),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,),
                        Container(
                          height: 52,
                          width: 343,
                          decoration: BoxDecoration(
                              border: Border.all(color: Style.primary),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '  Passward',
                              border: InputBorder.none,
                              hintStyle: Style.h6(Style.primary),
                            ),
                          ),
                        )


                  ],
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 30,
              right: 30,
              child: GestureDetector(
                onTap: (){
                  final provider = Provider.of<SignIN_provider>(context,  listen: false);
                  provider.googleLogin();
                },
                child: Container(
                  height: 50,
                  width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Center(
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 20,),
                        Image.asset('assets/images/google.png'),
                        SizedBox(width: 80,),
                        Text(
                          'Google',
                          style: Style.h6(Style.primary),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 30,
              right: 30,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
                child: Container(
                  height: 50,
                  width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.red),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: Style.h6(Style.primary),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
