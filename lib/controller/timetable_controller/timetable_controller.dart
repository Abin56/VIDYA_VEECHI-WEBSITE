import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/controller/subject_controller/subject_controller.dart';
import 'package:vidyaveechi_website/controller/teacher_controller/teacher_controller.dart';
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



  final classController = Get.put(ClassController());
  final subjectController = Get.put(SubjectController());
  final teacherController = Get.put(TeachersController());

  




  bool loadingStatus = false;


  RxBool ontapTimetable = false.obs;

  Future<void> addTimeTableDataToFirebase() async {
  final classController = Get.put(ClassController());
  final timetableDetails = TimeTableModel(
    selectClass: classController.className.value,
    dayName: dayName.value,
    teacherName: teacherController.teacherName,
    subjectName: subjectController.subjectName.value,
    periodNumber: periodNumber.value,
    startTime: startTimeController.text,
    endTime: endTimeController.text,
    selectColor: selectColor.value,
  );

  final Map<String, dynamic> timetableData = timetableDetails.toMap();

  try {
    await FirebaseFirestore.instance
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('classes')
        .doc(classController.classDocID.value)
        .collection('timetables')
        .doc(dayName.value)
        .collection(dayName.value)
        .doc(periodNumber.value)
        .set( {'period':timetableData})
        .then((value) {
          showToast(msg: 'Timetable Added');
          dayName.value = 'Select Day';
          subjectName.value = 'Select Subject';
          teacherName.value = 'Select Teacher';
          periodNumber.value = 'Period 1';
          selectclass.value = 'Select Class';
          selectColor.value = Colors.amber;
          startTimeController.clear();
          endTimeController.clear();
        });

    // Log the details
    print(UserCredentialsController.schoolId);
    print(UserCredentialsController.batchId!);
    print(classController.classDocID.value);
    print(dayName.value);
    print(classController.classDocID.value);
    print(periodNumber.value);
    print(timetableData);
  } catch (e, stackTrace) {
    log('Error adding timetable: $e', stackTrace: stackTrace);
    showToast(msg: 'Failed to add timetable');
  }
}

}
