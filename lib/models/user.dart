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
}
