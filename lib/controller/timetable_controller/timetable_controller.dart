// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
// import 'package:vidyaveechi_website/view/constant/const.dart';
// import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

// class TimeTableController extends GetxController{
//     String schoolID = '';
//   String dropdownValue1 = 'Select Day';
//     String selectClass = 'Select Class';
//   String dropdownValue2 = 'Select Subject';
//   String dropdownValue3 = 'Select Teacher';
//   String selectedPeriod = 'Period 1';
//   String selectedTime1 = 'Start Time  ';
//   String selectedTime2 = 'End Time  ';
//   //Color selectedColor = const Color(0x00fcfcfc);
//   // Color selectedColor = Colors.amber;
//   bool loadingStatus = false;

//   //values
//   String dayName = '';
//   String subjectName = '';
//   String teacherName = '';
//   String periodNumber = '';

//   TextEditingController startTimeController = TextEditingController();
//   TextEditingController endTimeController = TextEditingController();




//   Future<void> addTimeTableDataToFirebase() async {
//     // Get.put(AdminLoginScreenController());
//     // Get.put(GetFireBaseData());
//     log('Colorrrrrrrrrrrrrrrrrrrrrrrrrrrr$widget.firebaseColor');
//     // String uid = const Uuid().v1();
//     await FirebaseFirestore.instance
//         .collection('SchoolListCollection')
//         .doc(UserCredentialsController.schoolId)
//         .collection(UserCredentialsController.batchId!)
//         .doc(UserCredentialsController.batchId!)
//         .collection('classes')
//         .doc(Get.find<ClassController>().classDocID.value)
//         .collection('timetables')
//         .doc(dayName)
//         .set({'dayName': dayName});

//         log(' 222 Colorrrrrrrrrrrrrrrrrrrrrrrrrrrr$widget.firebaseColor');

//     FirebaseFirestore.instance
//         .collection('SchoolListCollection')
//         .doc(UserCredentialsController.schoolId)
//         .collection(UserCredentialsController.batchId!)
//         .doc(UserCredentialsController.batchId!)
//         .collection('classes')
//         .doc(Get.find<ClassController>().classDocID.value)
//         .collection('timetables')
//         .doc(dayName)
//         .collection(dayName)
//         .doc(selectedPeriod)
//         .set({
//       'period': {
//         'periodName': subjectName,
//         'periodTeacher': teacherName,
//         'startTime': startTimeController.text,
//         'endTime': endTimeController.text,
//         'color': 'Co${widget.firebaseColor}',
//         'timeStamp': selectedPeriod
//       }
//     }).then((value){
//       showToast(msg: 'Timetable Added');
//     });
//   }
// }