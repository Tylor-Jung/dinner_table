// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SaveMenuController extends GetxController {
//   static SaveMenuController instance = Get.find();
//   final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
//   final menuName = '';



//   Future signUp(String email, password) async {
//     try {
//       final newUser = await authencication.createUserWithEmailAndPassword(
//           email: email, password: password);

//       await FirebaseFirestore.instance
//           .collection('user')
//           .doc(newUser.user!.uid)
//           .set({'user name': userName});
//     } catch (e) {
//       Get.snackbar(
//         'Error message',
//         'User messgae',
//         backgroundColor: Colors.red,
//         snackPosition: SnackPosition.BOTTOM,
//         titleText: Text(
//           'Registration is failed.',
//           style: TextStyle(color: Colors.white),
//         ),
//         messageText: Text(
//           e.toString(),
//           style: TextStyle(color: Colors.white),
//         ),
//       );
//     }
//   }

//   void login(String email, password) async {
//     try {
//       authencication.signInWithEmailAndPassword(
//           email: email, password: password);
//     } catch (e) {
//       Get.snackbar(
//         'Error message',
//         'User messgae',
//         backgroundColor: Colors.red,
//         snackPosition: SnackPosition.BOTTOM,
//         titleText: Text(
//           'signin is failed.',
//           style: TextStyle(color: Colors.white),
//         ),
//         messageText: Text(
//           e.toString(),
//           style: TextStyle(color: Colors.white),
//         ),
//       );
//     }
//   }

//   void logout() {
//     authencication.signOut();
//   }
// }
