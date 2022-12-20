import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String email;
  final String postId;
  final String companyCode;
  final String subject;
  final datePublished;
  final String postUrl;
  //final likes;

  const Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.email,
    required this.postId,
    required this.companyCode,
    required this.subject,
    required this.datePublished,
    required this.postUrl,
  });

  Map<String, dynamic> toJson() => {
        "description": description,
        "uid": uid,
        "username": username,
        "email": email,
        "postId": postId,
        "companyCode": companyCode,
        "subject": subject,
        "datePublished": datePublished,
        "postUrl": postUrl,
      };
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      description: snapshot['description'],
      uid: snapshot['uid'],
      username: snapshot['username'],
      email: snapshot['email'],
      postId: snapshot['postId'],
      companyCode: snapshot['companyCode'],
      subject: snapshot['subject'],
      datePublished: snapshot['datePublished'],
      postUrl: snapshot['postUrl'],
    );
  }
}
