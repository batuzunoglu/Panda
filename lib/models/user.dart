import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User {
  final String username;
  final String uid;
  final String email;
  final String companyCode;
  final String subject;

  const User({
    required this.username,
    required this.uid,
    required this.email,
    required this.companyCode,
    required this.subject,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "email": email,
        "companyCode": companyCode,
        "subject": subject,
      };
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapshot['username'],
      uid: snapshot['uid'],
      email: snapshot['email'],
      companyCode: snapshot['companyCode'],
      subject: snapshot['subject'],
    );
  }
}
