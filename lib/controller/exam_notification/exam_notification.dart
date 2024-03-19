import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import 'package:vidyaveechi_website/model/exam_notification/exam_notification.dart';
import 'package:vidyaveechi_website/view/constant/const.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class ExamNotificationController extends GetxController {
  String startDate = '';
  String endDate = '';

  TextEditingController examNameCtr = TextEditingController();
  TextEditingController startDateCtr = TextEditingController();
  TextEditingController endDateCtr = TextEditingController();

  void addExamNotifcation({
    required String examName,
    required String startDate,
    required String endDate,
  }) {
    print(startDate);
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
    // server
    //     .collection('SchoolListCollection')
    //     .doc(UserCredentialsController.schoolId)
    //     .collection(UserCredentialsController.batchId!)
    //     .doc(UserCredentialsController.batchId!)
    //     .collection('ExamNotification')
    //     .doc(docId)
    //     .set(examData.toMap())
    //     .then((value) {
    //   showToast(msg: 'Exam Notifiaction Added');
    //   examNameCtr.text = '';
    //   startDateCtr.text = '';
    //   endDateCtr.text = '';
    // });

    server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection('ExamNotification')
        .doc(docId)
        .set(examData.toMap())
        .then((value) {
      showToast(msg: 'Exam Notifiaction Added');
      examNameCtr.text = '';
      startDateCtr.text = '';
      endDateCtr.text = '';
    });
  }

  void addExamNotifcationToBatchYear({required ExamNotificationModel data}) {
    server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('ExamNotification')
        .doc(data.docId)
        .set(data.toMap())
        .then((value) {
      showToast(msg: 'Exam Notifiaction Added');
      examNameCtr.text = '';
      startDateCtr.text = '';
      endDateCtr.text = '';
    });
  }

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
      required String docId}) {
    Duration differents =
        DateTime.parse(endDate).difference(DateTime.parse(startDate));
    final totalDays = differents.inDays + 1;
    final examData = ExamNotificationModel(
        examName: examName,
        startDate: startDate,
        endDate: endDate,
        docId: docId,
        totalDays: totalDays);
    server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection('ExamNotification')
        .doc(docId)
        .update(examData.toMap())
        .then((value) {
      server
          .collection('SchoolListCollection')
          .doc(UserCredentialsController.schoolId)
          .collection(UserCredentialsController.batchId!)
          .doc(UserCredentialsController.batchId!)
          .collection('ExamNotification')
          .doc(docId)
          .update(examData.toMap());

      showToast(msg: 'Exam Notifiaction Updated');
      examNameCtr.text = '';
      startDateCtr.text = '';
      endDateCtr.text = '';
    });
  }

  void deletExamNotification({required String docId}) {
    server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('ExamNotification')
        .doc(docId)
        .delete()
        .then((value) {
      showToast(msg: 'Exam Notifiaction Deleted');
    });
  }
}
