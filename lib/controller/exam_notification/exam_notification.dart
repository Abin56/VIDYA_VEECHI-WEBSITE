import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/model/exam_notification/exam_notification.dart';
import 'package:vidyaveechi_website/model/exam_time_table_model/exam_time_table_model.dart';
import 'package:vidyaveechi_website/view/constant/const.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class ExamNotificationController extends GetxController {
  String startDate = '';
  String endDate = '';

  Rx<TimeOfDay> startTime = Rx(TimeOfDay.now());
  Rx<TimeOfDay> endTime = Rx(TimeOfDay.now());

  TextEditingController examNameCtr = TextEditingController();
  TextEditingController startDateCtr = TextEditingController();
  TextEditingController endDateCtr = TextEditingController();
  TextEditingController startTimeCtr = TextEditingController();
  TextEditingController endTimeCtr = TextEditingController();

  final firebaseClassPath = server
      .collection('SchoolListCollection')
      .doc(UserCredentialsController.schoolId)
      .collection(UserCredentialsController.batchId!)
      .doc(UserCredentialsController.batchId!)
      .collection('classes');

  void addExamNotifcation({
    required String examName,
    required String startDate,
    required String endDate,
  }) async {
    Duration differents =
        DateTime.parse(endDate).difference(DateTime.parse(startDate));
    final totalDays = differents.inDays + 1;
    final docId = const Uuid().v1();
    final examData = ExamNotificationModel(
        examName: examName,
        startDate: startDate,
        endDate: endDate,
        docId: docId,
        totalDays: totalDays);
    await server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('ExamNotification')
        .doc(docId)
        .set(examData.toMap())
        .then((value) {
      showToast(msg: 'Exam notifiaction added');
      examNameCtr.text = '';
      startDateCtr.text = '';
      endDateCtr.text = '';
    });
  }

  // void addExamNotifcationToBatchYear({required ExamNotificationModel data}) {
  //   server
  //       .collection('SchoolListCollection')
  //       .doc(UserCredentialsController.schoolId)
  //       .collection(UserCredentialsController.batchId!)
  //       .doc(UserCredentialsController.batchId!)
  //       .collection('ExamNotification')
  //       .doc(data.docId)
  //       .set(data.toMap())
  //       .then((value) {
  //     showToast(msg: 'Exam Notifiaction Added');
  //     examNameCtr.text = '';
  //     startDateCtr.text = '';
  //     endDateCtr.text = '';
  //   });
  // }

  setStartDate(BuildContext context) async {
    final sDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      helpText: 'Select a date',
      cancelText: 'Cancel',
      confirmText: 'OK',
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0xFF2296F3), // Header background color
            // accentColor: Colors.white, // Selection color
            colorScheme: const ColorScheme.light(primary: Color(0xFF2296F3)),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (sDate != null) {
      startDate = sDate.toString();
      startDateCtr.text = dateConvert(sDate);
    }
  }

  setEndDate(BuildContext context) async {
    final sDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      helpText: 'Select a date',
      cancelText: 'Cancel',
      confirmText: 'OK',
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0xFF2296F3), // Header background color
            // accentColor: Colors.white, // Selection color
            colorScheme: const ColorScheme.light(primary: Color(0xFF2296F3)),
            buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (sDate != null) {
      endDate = sDate.toString();
      endDateCtr.text = dateConvert(sDate);
    }
  }

  void editExamNotification(
      {required String examName,
      required String startDate,
      required String endDate,
      required String docId}) async {
    Duration differents =
        DateTime.parse(endDate).difference(DateTime.parse(startDate));
    final totalDays = differents.inDays + 1;
    final examData = ExamNotificationModel(
        examName: examName,
        startDate: startDate,
        endDate: endDate,
        docId: docId,
        totalDays: totalDays);

    await server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('ExamNotification')
        .doc(docId)
        .update(examData.toMap())
        .then((value) {
      showToast(msg: 'Exam notifiaction updated');
      examNameCtr.text = '';
      startDateCtr.text = '';
      endDateCtr.text = '';
    });
  }

  void deletExamNotification({required String docId}) async {
    try {
      await server
          .collection('SchoolListCollection')
          .doc(UserCredentialsController.schoolId)
          .collection(UserCredentialsController.batchId!)
          .doc(UserCredentialsController.batchId!)
          .collection('ExamNotification')
          .doc(docId)
          .delete()
          .then((value) {
        showToast(msg: 'Exam notifiaction deleted');
      });
    } catch (e) {
      showToast(msg: "Error occurred");
    }
  }

  void setStartTime(BuildContext context) async {
    final TimeOfDay? timeData = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timeData != null) {
      startTime.value = timeData;
    }
  }

  void setEndTime(BuildContext context) async {
    final TimeOfDay? timeData = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timeData != null) {
      endTime.value = timeData;
    }
  }

  void addExamTimeTable(
      {required String subject,
      required String date,
      required String startTime,
      required String endTime}) async {
    final uuid = const Uuid().v1();
    final examData = ExamTimeTableModel(
        subject: subject,
        docId: uuid,
        startTime: startTime,
        endTime: endTime,
        date: date);

    try {
      final existdata = await firebaseClassPath
          .doc(Get.find<ClassController>().classDocID.value)
          .collection('ExamTimeTable')
          .where('subject', isEqualTo: subject)
          .get();
      if (existdata.docs.isEmpty) {
        await firebaseClassPath
            .doc(Get.find<ClassController>().classDocID.value)
            .collection('ExamTimeTable')
            .doc(uuid)
            .set(examData.toMap())
            .then((value) {
          showToast(msg: "Timetable added");
        });
      } else {
        showToast(msg: "Timetable already added");
      }
    } catch (e) {
      showToast(msg: "Error occurred");
    }
  }

  void deleteExamTibleTable({required String docId}) async {
    try {
      await firebaseClassPath
          .doc(Get.find<ClassController>().classDocID.value)
          .collection('ExamTimeTable')
          .doc(docId)
          .delete()
          .then((value) {
        showToast(msg: "Timetable Deleted");
      });
    } catch (e) {
      showToast(msg: "Error occurred");
    }
  }

  void editExamTimeTable(
      {required String docId,
      required String date,
      required String startTime,
      required String endTime}) async {
    try {
      await firebaseClassPath
          .doc(Get.find<ClassController>().classDocID.value)
          .collection('ExamTimeTable')
          .doc(docId)
          .update({
        'startTime': startTime,
        'endTime': endTime,
        'date': date
      }).then((value) {
        showToast(msg: "Timetable updated");
      });
    } catch (e) {
      showToast(msg: "Error occurred");
    }
  }
}
