import '../models/user.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

dynamic createUser(BuildContext context, CreateUserModel createUserModel) async {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  try {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
      email: createUserModel.email,
      password: createUserModel.password
    );

    Navigator.pop(context);
    print(result.user.uid);

    if(!result.user.isEmailVerified){
      result.user.sendEmailVerification();
    }

    

    return null;

  } catch(e) {

    Navigator.pop(context);
    return e.message;
  }
}