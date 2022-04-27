import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModele {
  String title, desc;
  CategoryModele.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    title = documentSnapshot.id;
    desc = documentSnapshot['test'];
  }
}
