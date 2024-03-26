import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/admin_section/parent_controller/parent_controller.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/drop_down/allStudent.dart';
import 'package:vidyaveechi_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

addParentToClass(BuildContext context, ) {
  final ParentController parentController = Get.put(ParentController());
  customShowDilogBox2(
      context: context,
      title: 'Add Parent',
      children: [ AllStudentDropDown(),
       TextFormFiledBlueContainerWidgetWithOutColor(
        controller: parentController.parentNameController,
        hintText: " Enter Parent Name",
        title: 'Parent Name',
        validator: checkFieldEmpty,
      ), 
      ],
      doyouwantActionButton: true,
  );
  
}