
import 'package:carrot_market_2_0/views/screens/add_video_screen.dart';

import 'package:carrot_market_2_0/views/screens/chat/chat_screen.dart';
import 'package:carrot_market_2_0/views/screens/profile_screen.dart';
import 'package:carrot_market_2_0/views/screens/search_screen.dart';
import 'package:carrot_market_2_0/views/screens/video_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'controllers/auth_controller.dart';

List navigatePages(String uid) {
  return [
    VideoScreen(),
    SearchScreen(),
    const AddVideoScreen(),
    const ChatScreen(), // this is to do .. I will add chat functionality..
    ProfileScreen(uid: uid),
  ];
}




// COLORS
var backgroundColor = Colors.blueGrey[900];
var buttonColor = Colors.orange[900];
const borderColor = Colors.grey;

// FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// CONTROLLER
var authController = AuthController.instance;