import 'package:flutter/material.dart';
import 'package:panda/screens/add_post_screen.dart';
import 'package:panda/screens/feed_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  Text('search'),
  AddPostScreen(),
  Text('notif'),
  Text('profile'),
];
