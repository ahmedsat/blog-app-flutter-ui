import 'package:cloud_firestore/cloud_firestore.dart';

class UserModle {
  String email;
  int membership = -1;
  UserModle({this.email, this.membership});
  UserModle.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    email = documentSnapshot.id;
    membership = documentSnapshot['membership'];
  }
}
