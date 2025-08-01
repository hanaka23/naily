


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> createUserInFirestore(String email) async {
  var uid= FirebaseAuth.instance.currentUser?.uid;
  var email= FirebaseAuth.instance.currentUser?.email;
  var userDoc = await FirebaseFirestore.instance.collection('users').doc(uid).get();

  if (!userDoc.exists) {
    await userDoc.reference.set({
        'uid': uid,
        'email': email,
        'created_at': FieldValue.serverTimestamp(),
      });
  } 
}