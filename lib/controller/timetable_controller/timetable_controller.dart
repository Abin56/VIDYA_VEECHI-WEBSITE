import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/controller/subject_controller/subject_controller.dart';
import 'package:vidyaveechi_website/model/timetable_model/timetable_model.dart';
import 'package:vidyaveechi_website/view/constant/const.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class TimeTableController extends GetxController {
  RxString dayName = 'Select Day'.obs;
  RxString subjectName = 'Select Subject'.obs;
  RxString teacherName = 'Select Teacher'.obs;
  RxString periodNumber = 'Period 1'.obs;
  RxString selectclass = 'Select Class'.obs;
  Rx<Color> selectColor = Rx<Color>(Colors.amber);

  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();

 //String colorAsString = selectColor.value.toString();

  final classCtrl = Get.put(ClassController());
  final subjectCtrl = Get.put(SubjectController());
  final teacherCtrl = Get.put(SubjectController());

  void setTeacherName(String value) {
    teacherName.value = value;
  }




  bool loadingStatus = false;


  RxBool ontapTimetable = false.obs;

  Future<void> addTimeTableDataToFirebase() async {
    final classCtrl = Get.put(ClassController());
    final timetableDetails = TimeTableModel(
      selectClass: classCtrl.className.value,
      dayName: dayName.value,
      teacherName: teacherName.value,
      subjectName: subjectCtrl.subjectName.value,
      periodNumber: periodNumber.value,
      startTime: startTimeController.text,
      endTime: endTimeController.text,
      selectColor: selectColor.toString(),
    );

    final Map<String, dynamic> timetableData = timetableDetails.toMap();

    try {
      await FirebaseFirestore.instance
          .collection('SchoolListCollection')
          .doc(UserCredentialsController.schoolId)
          .collection(UserCredentialsController.batchId!)
          .doc(UserCredentialsController.batchId!)
          .collection('classes')
          .doc(classCtrl.classDocID.value)
          .collection('timetables')
          .doc(dayName.value)
          .collection(dayName.value)
          .doc(periodNumber.value)
          .set(timetableData);

      print(UserCredentialsController.schoolId);
      print(UserCredentialsController.batchId!);
      print(classCtrl.classDocID.value);
      print(dayName.value);
      print(classCtrl.classDocID.value);
      print(periodNumber.value);
      print(timetableData);

      showToast(msg: 'Timetable Added');
    } catch (e, stackTrace) {
      log('Error adding timetable: $e', stackTrace: stackTrace);
      showToast(msg: 'Failed to add timetable');
    }
  }
}
