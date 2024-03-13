import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:vidyaveechi_website/model/class_model/class_model.dart';
import 'package:vidyaveechi_website/view/constant/const.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class ClassController extends GetxController {
  final TextEditingController classNameController = TextEditingController();
  final TextEditingController classNameEditController = TextEditingController();
  Rx<ButtonState> buttonstate = ButtonState.idle.obs;
  List<ClassModel> allclassList = [];
  RxString className = ''.obs;
  RxString classDocID = ''.obs;
  RxBool ontapClass = false.obs;

  final _schoolserver = server
      .collection('SchoolListCollection')
      .doc(UserCredentialsController.schoolId);

  Future<void> addNewClass() async {
    //.. Create New Class
    buttonstate.value = ButtonState.loading;
    try {
      final data = ClassModel(
          editoption: false,
          docid: classNameController.text.trim() + uuid.v1(),
          className: classNameController.text.trim());
      _schoolserver
          .collection("classes")
          .doc(data.docid)
          .set(data.toMap())
          .then((value) async {
        buttonstate.value = ButtonState.success;
        classNameController.clear();
        await Future.delayed(const Duration(seconds: 2)).then((vazlue) {
          buttonstate.value = ButtonState.idle;
        });

        showToast(msg: 'New Class Added');
      });
    } catch (e) {
      showToast(msg: 'Somthing went wrong please try again');
      buttonstate.value = ButtonState.fail;
      await Future.delayed(const Duration(seconds: 2)).then((value) {
        buttonstate.value = ButtonState.idle;
      });
      if (kDebugMode) {
        log(e.toString());
      }
    }
  }

  setClassForbatchYear(String className, String docid) async {
    try {
      final data =
          ClassModel(docid: docid, className: className, editoption: false);
      await _schoolserver
          .collection(UserCredentialsController.batchId!)
          .doc(UserCredentialsController.batchId!)
          .collection('classes')
          .doc(docid)
          .set(data.toMap())
          .then((value) => showToast(msg: 'Class Added to BatchYear'));
    } catch (e) {
      showToast(msg: 'Somthing went wrong please try again');
      log(e.toString());
    }
  }

  Future<void> enableorDisableUpdate(
    String docid,
    bool status,
  ) async {
    await _schoolserver
        .collection("classes")
        .doc(docid)
        .update({'editoption': status});
  }

  Future<void> updateClassName(String docid) async {
    //................. Update Class Name
    //.... Update Class Name
    try {
      _schoolserver.collection("classes").doc(docid).update({
        'className': classNameEditController.text.trim(),
        'editoption': false,
      }).then((value) {
        _schoolserver
            .collection(UserCredentialsController.batchId!)
            .doc(UserCredentialsController.batchId!)
            .collection('classes')
            .doc(docid)
            .update({'className': classNameEditController.text.trim()}).then(
                (value) => showToast(msg: 'Class Name Changed'));
        classNameEditController.clear();
      });
    } catch (e) {
      showToast(msg: 'Somthing went wrong please try again');
      if (kDebugMode) {
        log(e.toString());
      }
    }
  }

  deleteClass(String docid, BuildContext context) async {
    ///////////............................. Delete Global Classes
    if (UserCredentialsController.schoolId == serverAuth.currentUser!.uid) {
      showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(),
            title: const Text('Alert'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                      'Once you delete a class all data will be lost \n Are you sure ?')
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () async {
                  try {
                    _schoolserver
                        .collection("classes")
                        .doc(docid)
                        .delete()
                        .then((value) => showToast(msg: 'Class Deleted'));
                    Navigator.pop(context);
                  } catch (e) {
                    showToast(msg: 'Somthing went wrong please try again');
                    if (kDebugMode) {
                      log(e.toString());
                    }
                  }
                },
              ),
            ],
          );
        },
      );
    } else {
      return showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Alert'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('Sorry you have no access to delete')],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  deleteBatchClasses(BuildContext context, String docid) async {
    //................. Delete Batch Year Classes
    if (UserCredentialsController.schoolId == serverAuth.currentUser!.uid) {
      showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Alert'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                      'Once you delete a class all data will be lost \n Are you sure ?')
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () async {
                  try {
                    await _schoolserver
                        .collection(UserCredentialsController.batchId!)
                        .doc(UserCredentialsController.batchId!)
                        .collection('classes')
                        .doc(docid)
                        .delete()
                        .then((value) => showToast(msg: 'Class Deleted'));
                  } catch (e) {
                    showToast(msg: 'Somthing went wrong please try again');
                    if (kDebugMode) {
                      log(e.toString());
                    }
                  }
                },
              ),
            ],
          );
        },
      );
    } else {
      return showDialog(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Alert'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text('Sorry you have no access to delete')],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  Future<List<ClassModel>> fetchClass() async {
    final firebase = await server
        .collection('SchoolListCollection')
        .doc(UserCredentialsController.schoolId)
        .collection(UserCredentialsController.batchId!)
        .doc(UserCredentialsController.batchId!)
        .collection('classes')
        .get();

    for (var i = 0; i < firebase.docs.length; i++) {
      final list =
          firebase.docs.map((e) => ClassModel.fromMap(e.data())).toList();
      allclassList.add(list[i]);
    }
    return allclassList;
  }
}
