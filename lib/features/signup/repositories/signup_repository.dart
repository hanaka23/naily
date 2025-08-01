import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:naily/features/signup/repositories/signup_create_firestore.dart';

Future createUserWithEmailAndPassword(String email, String password) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    createUserInFirestore(email);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  }
  return false;
}