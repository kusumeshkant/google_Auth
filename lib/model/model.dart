import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIN_provider extends ChangeNotifier{
  final signIn = GoogleSignIn();
  GoogleSignInAccount ? _user;
  GoogleSignInAccount get user => _user!;


  Future googleLogin() async {
    final googleUser = await signIn.signIn();

    if( googleUser == null )return;
    _user = googleUser;

    final googleAuth = await googleUser.authentication;
    final  cread = GoogleAuthProvider.credential(
      accessToken:  googleAuth.accessToken,
      idToken:  googleAuth.idToken,
    );

    await FirebaseAuth.instance.signInWithCredential(cread);

    notifyListeners();
  }

  Future Logout () async{
    await signIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}

