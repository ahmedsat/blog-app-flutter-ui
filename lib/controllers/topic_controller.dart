import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/core/constants.dart';
import 'package:elmohandes/models/category_model.dart';
import 'package:get/get.dart';

class TopicController extends GetxController {
  static TopicController instance = Get.find();
  final CollectionReference<Map<String, dynamic>> _collection = FirebaseFirestore.instance.collection(categoryCollection);
  Rx<List<CategoryModele>> categoryList = [] as Rx<List<CategoryModele>>;

  List<CategoryModele> get categorys => categoryList.value;

  @override
  void onInit() async {
    print('-----');
    super.onInit();
    var categoryStream = await _collection.snapshots().map((QuerySnapshot query) {
      List<CategoryModele> retVal = List();
      query.docs.forEach((element) {
        retVal.add(CategoryModele.fromDocumentSnapshot(element));
      });
      return retVal;
    });
    categoryList.bindStream(categoryStream);
  }

  // Stream<DocumentSnapshot> categoryStream() {
  //   return _collection.doc().snapshots();
  // }

  // Stream<List<CategoryModele>> categoryStream() {
  //   return _collection.snapshots().map((QuerySnapshot query) {
  //     List<CategoryModele> retVal = List();
  //     query.docs.forEach((element) {
  //       retVal.add(CategoryModele.fromDocumentSnapshot(element));
  //     });
  //     return retVal;
  //   });
  // }
}

/*


*/
