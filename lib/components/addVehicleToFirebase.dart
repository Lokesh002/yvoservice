import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddVehicleToFirebase {
  getVehicleFromDatabase(String email) {
    return Firestore.instance
        .collection('user')
        .where('email', isEqualTo: email)
        .getDocuments();
  }
}
