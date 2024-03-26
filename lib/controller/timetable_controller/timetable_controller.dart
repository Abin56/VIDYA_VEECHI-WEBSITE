

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/model/timetable_model/timetable_model.dart';
import 'package:vidyaveechi_website/view/constant/const.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class TimeTableController extends GetxController{
  RxString dayName = ''.obs;
  RxString subjectName = ''.obs;
  RxString teacherName = ''.obs;
  RxString periodNumber = ''.obs;
   RxString selectclass = ''.obs;
   RxString selectColor = ''.obs;


  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();








final classCtrl = Get.put(ClassController());

    String schoolID = '';
  String dropdownValue1 = 'Select Day';
    String selectClass = 'Select Class';
  String dropdownValue2 = 'Select Subject';
  String dropdownValue3 = 'Select Teacher';
  String selectedPeriod = 'Period 1';
  String selectedTime1 = 'Start Time  ';
  String selectedTime2 = 'End Time  ';
  //Color selectedColor = const Color(0x00fcfcfc);
  // Color selectedColor = Colors.amber;
  bool loadingStatus = false;



  // TextEditingController startTimeController = TextEditingController();
  // TextEditingController endTimeController = TextEditingController();
   RxBool ontapTimetable = false.obs;



  Future<void> addTimeTableDataToFirebase() async {
    
final classCtrl = Get.put(ClassController());
    final timetableDetails = TimeTableModel(
        selectClass: classCtrl.className.value,
        dayName: dayName.value,
        teacherName: teacherName.value,
        subjectName: subjectName.value,
        periodNumber: periodNumber.value,
        startTime: startTimeController.text,
        endTime: endTimeController.text,
        selectColor: selectColor.value
        );
    // Get.put(AdminLoginScreenController());
    // Get.put(GetFireBaseData());
  //  log('Colorrrrrrrrrrrrrrrrrrrrrrrrrrrr$widget.firebaseColor');
    // String uid = const Uuid().v1();
    await FirebaseFirestore.instance
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('classes')
        .doc(Get.find<ClassController>().classDocID.value)
        .collection('timetables')
        .doc(dayName.value)
        .set({'dayName': dayName});

       // log(' 222 Colorrrrrrrrrrrrrrrrrrrrrrrrrrrr$widget.firebaseColor');

    FirebaseFirestore.instance
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('classes')
        .doc(Get.find<ClassController>().classDocID.value)
        .collection('timetables')
        .doc(dayName.value)
        .collection(dayName.value)
        .doc(selectedPeriod)
        .set(timetableDetails.toMap()).then((value){
      showToast(msg: 'Timetable Added');
    });
  }
}
