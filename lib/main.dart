import 'package:flutter/material.dart';
import 'package:google_auth/model/fetch.dart';
import 'package:google_auth/model/model.dart';
import 'package:provider/provider.dart';
import 'Screens/Loging_type.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => SignIN_provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: fetch(),
      ),
    );
  }


