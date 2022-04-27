import 'package:cloud_firestore/cloud_firestore.dart';

class UserModle {
  String email;
  int membership;
  UserModle({this.email, this.membership = -1});
  UserModle.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    email = documentSnapshot.id;
    membership = documentSnapshot['membership'];
  }
}
