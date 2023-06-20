import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning/database/courseData.dart';
import 'package:elearning/database/courseData.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class AdminControllers {
  RxBool busy = false.obs;
  // Rx<CourseModel> CourseModel => CourseModel().obs;

  toggle() {
    busy.toggle();
    // update();
  }

  addCourse() async {
    try {
      toggle();
      final courseStorage = FirebaseStorage.instance;
      
      // FirebaseFirestore courseAuth = FirebaseFirestore.instance;
      // FirebaseFirestore create=

    } on FirebaseException catch (e) {}
  }
}
