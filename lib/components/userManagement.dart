import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserManagement {
  storeNewUser(FirebaseUser user, context) {
    return Firestore.instance.collection('/users').add({
      'email': user.email,
      'uid': user.uid,
    }).then((value) {
      Navigator.of(context).pop();
      Navigator.of(context).pushNamed('/register');
    })
//        .catchError((err) {
//      print(err);
//    })
        ;
  }
}
