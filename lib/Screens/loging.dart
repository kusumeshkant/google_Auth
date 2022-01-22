// import 'dart:async';
// import 'dart:js';
//
// import 'package:flutter/material.dart';
// import 'package:google_auth/Screens/Loging_type.dart';
// import 'package:google_auth/variabes/const.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class login_Page extends StatefulWidget {
//   const login_Page({Key? key}) : super(key: key);
//
//   @override
//   _login_PageState createState() => _login_PageState();
//
//   void timer1() {
//     Timer(
//       const Duration(seconds: 3),
//           () => Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => Login())),
//     );
//
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     timer1();
//   }
//
//
// }
//
// class _login_PageState extends State<login_Page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Stack(
//           children: [
//             Container(
//               color: Colors.blue,
//             ),
//             Positioned(
//               bottom: 350,
//               left: 80,
//               child: Text(
//                 'Welcome to Google Auth',
//                 style: Style.h6(Style.primary),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
