import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/core/constants.dart';
import 'package:get/get.dart';

class TopicController extends GetxController {
  static TopicController instance = Get.find();
  final CollectionReference<Map<String, dynamic>> _collection = FirebaseFirestore.instance.collection(categoryCollection);
  Rx<List<String>> _categoryList;

  List<String> get categorys => _categoryList.value;

  @override
  void onInit() {
    super.onInit();
    _categoryList.bindStream(categoryStream());
  }

  Stream<List<String>> categoryStream() {
    return _collection.snapshots().map((QuerySnapshot query) {
      List<String> retVal = List();
      query.docs.forEach((element) {
        retVal.add(element.id);
      });
      return retVal;
    });
  }
}
