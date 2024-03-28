import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:vidyaveechi_website/model/class_model/class_model.dart';
import 'package:vidyaveechi_website/model/fees_model/fees_model_controller.dart';
import 'package:vidyaveechi_website/view/constant/const.dart';
import 'package:vidyaveechi_website/view/utils/firebase/firebase.dart';
import 'package:vidyaveechi_website/view/utils/shared_pref/user_auth/user_credentials.dart';

class FeesAndBillsController extends GetxController {
  RxList<ClassModel> allClassList = RxList<ClassModel>();
  RxList<ClassModel> selectedClassList = RxList<ClassModel>();
  RxBool selectAllClass = false.obs;
  Rx<ButtonState> buttonstate = ButtonState.idle.obs;
  RxBool ontapCreateFees = false.obs;
  RxBool ontapviewclasswiseFees = false.obs;

  Future<RxList<ClassModel>> fetchClass() async {
    allClassList.clear();
    selectedClassList.clear();

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
      allClassList.add(list[i]);
    }
    return allClassList;
  }

  TextEditingController feestypeNameContoller = TextEditingController();
  TextEditingController feesContoller = TextEditingController();
  TextEditingController feesDueContoller = TextEditingController();
  Future<void> addFessAsignToClass() async {
    buttonstate.value = ButtonState.loading;
    final ClassFeesModel feesDetail = ClassFeesModel(
        docid: seletedFeeDateContoller.text.trim(),
        feestypeName: feestypeNameContoller.text,
        fees: int.parse(feesContoller.text.trim()),
        createdDate: DateTime.now(),
        dueDate: DateTime.now()
            .add(Duration(days: int.parse(feesDueContoller.text.trim()))));
    try {
      for (var i = 0; i < selectedClassList.length; i++) {
        await server
            .collection('SchoolListCollection')
            .doc(UserCredentialsController.schoolId)
            .collection(UserCredentialsController.batchId!)
            .doc(UserCredentialsController.batchId!)
            .collection('classes')
            .doc(selectedClassList[i].docid)
            .collection("ClassFees")
            .doc(selectedFeeMonthContoller.text.trim())
            .set({'docid': selectedFeeMonthContoller.text.trim()}).then(
                (value) async {
          await server
              .collection('SchoolListCollection')
              .doc(UserCredentialsController.schoolId)
              .collection(UserCredentialsController.batchId!)
              .doc(UserCredentialsController.batchId!)
              .collection('classes')
              .doc(selectedClassList[i].docid)
              .collection("ClassFees")
              .doc(selectedFeeMonthContoller.text.trim())
              .collection(seletedFeeDateContoller.text.trim())
              .doc(feesDetail.docid)
              .set(feesDetail.toMap())
              .then((value) async {
            feestypeNameContoller.clear();
            feesContoller.clear();
            feesDueContoller.clear();
            seletedFeeDateContoller.clear();
            selectedFeeMonthContoller.clear();
            buttonstate.value = ButtonState.success;
            await Future.delayed(const Duration(seconds: 2)).then((vazlue) {
              buttonstate.value = ButtonState.idle;
            });

            showToast(msg: 'Fees Genrated Completed');
          });
        });
      }
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

  TextEditingController seletedFeeDateContoller = TextEditingController();
  TextEditingController selectedFeeMonthContoller = TextEditingController();
  final Rxn<DateTime> _selectedFeeDate = Rxn<DateTime>();
  final Rxn<DateTime> _selectedMonth = Rxn<DateTime>();
  selectMonth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedMonth.value ?? DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2100),
      // builder: (context, child) {},
    );
    if (picked != null && picked != _selectedMonth.value) {
      _selectedMonth.value = picked;
      DateTime parseDate = DateTime.parse(_selectedMonth.value.toString());
      final DateFormat formatter = DateFormat('yyyy-MMMM');
      String formatted = formatter.format(parseDate);

      selectedFeeMonthContoller.text = formatted.toString();
    }
  }

  selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedFeeDate.value ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedFeeDate.value) {
      _selectedFeeDate.value = picked;
      DateTime parseDate = DateTime.parse(_selectedFeeDate.value.toString());
      final DateFormat formatter = DateFormat('dd-MM-yyyy');
      String formatted = formatter.format(parseDate);

      seletedFeeDateContoller.text = formatted.toString();
    }
  }
}
