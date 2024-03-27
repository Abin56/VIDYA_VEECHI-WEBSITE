import 'dart:developer';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class AttendenceController extends GetxController {
  RxInt periodSelectedIndex = 0.obs;
  List<String> fetchClassWiseMonth = [];
  List<String> fetchClassWiseDate = [];
  RxBool todayAttendence = true.obs;
   RxBool ontapaddAttendence = false.obs;
  RxBool fetchClassMonthActivate = false.obs;
  RxString fetchClassWiseMonthvalue = 'dd'.obs;
  RxString fetchClassWiseDatevalue = 'dd'.obs;

  RxInt absentStudent = 0.obs;
  RxInt totalStudents = 0.obs;

  Future<List<String>> fetchClassWiseMonthsfunction() async {
    try {
      await server
          .collection('SchoolListCollection')
          .doc(UserCredentialsController.schoolId)
          .collection(UserCredentialsController.batchId!)
          .doc(UserCredentialsController.batchId!)
          .collection('classes')
          .doc(Get.find<ClassController>().classDocID.value)
          .collection('Attendence')
          .get()
          .then((value) {
        for (var i = 0; i < value.docs.length; i++) {
          fetchClassWiseMonth.add(value.docs[i].data()['id']);
        }
      });
    } catch (e) {
      log(e.toString());
    }

    return fetchClassWiseMonth;
  }

  Future<List<String>> fetchClassWiseDatefunction() async {
    try {
      await server
          .collection('SchoolListCollection')
          .doc(UserCredentialsController.schoolId)
          .collection(UserCredentialsController.batchId!)
          .doc(UserCredentialsController.batchId!)
          .collection('classes')
          .doc(Get.find<ClassController>().classDocID.value)
          .collection('Attendence')
          .doc(fetchClassWiseMonthvalue.value)
          .collection(fetchClassWiseMonthvalue.value)
          .get()
          .then((value) {
        for (var i = 0; i < value.docs.length; i++) {
          fetchClassWiseDate.add(value.docs[i].data()['docid']);
        }
      });
    } catch (e) {
      log(e.toString());
    }

    return fetchClassWiseDate;
  }

  Future<int> getStudentAbsentCount({
    required String periodID,
  }) async {
    try {
      log("getStudentAbsentList Loading...................");
      final date = DateTime.now();
      DateTime parseDate = DateTime.parse(date.toString());
      final month = DateFormat('MMMM-yyyy');
      String monthwise = month.format(parseDate);
      final DateFormat formatter = DateFormat('dd-MM-yyyy');
      String formatted = formatter.format(parseDate);
      todayAttendence.value == true
          ? await server
              .collection(UserCredentialsController.batchId!)
              .doc(UserCredentialsController.batchId)
              .collection('classes')
              .doc(UserCredentialsController.classId)
              .collection('Attendence')
              .doc(monthwise)
              .collection(monthwise)
              .doc(formatted)
              .collection('Subjects')
              .doc(periodID)
              .collection('AttendenceList')
              .get()
              .then((abResult) async {
              for (var i = 0; i < abResult.docs.length; i++) {
                if (abResult.docs[i].data()['present'] == false) {
                  absentStudent.value + 1;
                }
              }
            })
          : await server
              .collection(UserCredentialsController.batchId!)
              .doc(UserCredentialsController.batchId)
              .collection('classes')
              .doc(UserCredentialsController.classId)
              .collection('Attendence')
              .doc(fetchClassWiseMonthvalue.value)
              .collection(fetchClassWiseMonthvalue.value)
              .doc(fetchClassWiseDatevalue.value)
              .collection('Subjects')
              .doc(periodID)
              .collection('AttendenceList')
              .get()
              .then((abResult) async {
              for (var i = 0; i < abResult.docs.length; i++) {
                if (abResult.docs[i].data()['present'] == false) {
                  absentStudent.value + 1;
                }
              }
            });
    } catch (e) {
      log(e.toString());
    }
    return absentStudent.value;
  }
}
