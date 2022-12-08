import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign up user
  signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
  }) {}
}
