import 'package:firebase_auth/firebase_auth.dart';

bool userState() {
  return FirebaseAuth.instance.currentUser != null;
}