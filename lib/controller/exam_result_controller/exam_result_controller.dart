import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class ExamResultController extends GetxController {
  RxString noOfExam = ''.obs;

  List<String> examList = [];

  RxInt numberExamConducted = 0.obs;
  RxInt numberExamPassed = 0.obs;
  RxInt numberExamFailed = 0.obs;

  RxString examId = '-'.obs;

  void getNumberOfExamConductedSingleStudent(
      {required String studentId,
      required String classId,
      required String examId}) async {
    final firebase = await server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('classes')
        .doc(classId)
        .collection('Students')
        .doc(studentId)
        .collection('Exam Results')
        .doc(examId)
        .collection('Marks')
        .get();

    // int numberOfExam = firebase.docs.length;

    numberExamConducted.value = firebase.docs.length;
  }

  void getNumberOfExamPassedSingleStudent(
      {required String studentId,
      required String classId,
      required String examId}) async {
    int count = 0;
    final firebase = await server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('classes')
        .doc(classId)
        .collection('Students')
        .doc(studentId)
        .collection('Exam Results')
        .doc(examId)
        .collection('Marks')
        .get();

    for (var element in firebase.docs) {
      if (int.parse(element['obtainedMark']) >=
          int.parse(element['passMark'])) {
        count++;
      }
    }
    numberExamPassed.value = count;
    numberExamFailed.value = firebase.docs.length - count;
  }

  Future<List<String>> fetchExamStudent(
      {required String studentId, required String classId}) async {
    final firebase = await server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('classes')
        .doc(classId)
        .collection('Students')
        .doc(studentId)
        .collection('Exam Results')
        .get();

    for (var element in firebase.docs) {
      examList.add(element['docid']);
    }

    // for (var i = 0; i < firebase.docs.length; i++) {
    //   final list =
    //       firebase.docs.map((e) => ClassModel.fromMap(e.data())).toList();
    //   examList.add(list[i]);
    // }
    return examList;
  }

//  bool getPassOrFail({required String obtainMark ,required String passMark }){

//   if(obtainMark >= passMark){
//     return true;
//   }
//   return false;

//   }
}
