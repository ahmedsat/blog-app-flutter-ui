import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/core/constants.dart';
import 'package:get/get.dart';

class TopicController extends GetxController {
  static TopicController instance = Get.find();
  final CollectionReference<Map<String, dynamic>> _collection = FirebaseFirestore.instance.collection(categoryCollection);
  Rx<List<String>> categoryList;

  List<String> get categorys => categoryList.value;

  @override
  void onInit() {
    super.onInit();
  }

  Stream<DocumentSnapshot> categoryStream() {
    return _collection.doc().snapshots();
  }
}

/*


*/
