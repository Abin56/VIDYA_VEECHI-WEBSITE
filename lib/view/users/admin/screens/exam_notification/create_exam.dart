import 'dart:developer';

import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:progress_state_button/progress_button.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_functions_n_list/edit_function.dart';
import 'package:vidyaveechi_website/view/widgets/progess_button/progress_button.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';
//import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

createExamNotificationFunction(BuildContext context) {
  aweSideSheet(
      context: context,
      footer: Container(),
      sheetPosition: SheetPosition.right,
      // title: 'Create Class',
      header: Container(),
      // t
      body: Column(
        children: [
          const Row(
            children: [
              BackButton(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFontWidget(text: "Batch 2024 - 2025", fontsize: 19),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 08, right: 08),
            child: TextFormFiledBlueContainerWidget(
              hintText: "  Enter Exam Name",
              title: 'Exam Name',
              validator: checkFieldEmpty,
            ),
          ), /////////////////////////..........................................
          Padding(
            padding: const EdgeInsets.only(left: 08, right: 08),
            child: SizedBox(
              height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
              // color: cWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextFontWidget(
                      text: 'Starting Date🗓️ *', fontsize: 12.5),
                  const SizedBox(
                    height: 05,
                  ),
                  GestureDetector(
                    onTap: () => showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2018),
                      lastDate: DateTime(2030),
                      helpText: 'Select a date',
                      cancelText: 'Cancel',
                      confirmText: 'OK',
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            primaryColor: const Color(
                                0xFF2296F3), // Header background color
                            // accentColor: Colors.white, // Selection color
                            colorScheme: const ColorScheme.light(
                                primary: Color(0xFF2296F3)),
                            buttonTheme: const ButtonThemeData(
                              textTheme: ButtonTextTheme.primary,
                            ),
                          ),
                          child: child!,
                        );
                      },
                    ),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(05),
                          color: screenContainerbackgroundColor,
                          border: Border.all(color: cBlack.withOpacity(0.4))),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFontWidget(
                            text: 'DD/MM/YYYY *', fontsize: 12.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), ///////////////////////////////////////////............................
          Padding(
            padding: const EdgeInsets.only(left: 08, right: 08),
            child: SizedBox(
              height: ResponsiveWebSite.isMobile(context) ? 80 : 100,
              // color: cWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextFontWidget(
                      text: 'Ending Date🗓️ *', fontsize: 12.5),
                  const SizedBox(
                    height: 05,
                  ),
                  GestureDetector(
                    onTap: () => showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2018),
                      lastDate: DateTime(2030),
                      helpText: 'Select a date',
                      cancelText: 'Cancel',
                      confirmText: 'OK',
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            primaryColor: const Color(
                                0xFF2296F3), // Header background color
                            // accentColor: Colors.white, // Selection color
                            colorScheme: const ColorScheme.light(
                                primary: Color(0xFF2296F3)),
                            buttonTheme: const ButtonThemeData(
                              textTheme: ButtonTextTheme.primary,
                            ),
                          ),
                          child: child!,
                        );
                      },
                    ),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(05),
                          color: screenContainerbackgroundColor,
                          border: Border.all(color: cBlack.withOpacity(0.4))),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFontWidget(
                            text: 'DD/MM/YYYY *', fontsize: 12.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ), ///////////////////////////..............................................
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              // color: Colors.amber,
              height: 40,
              width: 180,
              child: Obx(() => ProgressButtonWidget(
                  function: () async {
                    Get.find<ClassController>().addNewClass();
                    log("state   ${Get.find<ClassController>().buttonstate}");
                  },
                  buttonstate: Get.find<ClassController>().buttonstate.value,
                  text: ' Exam')),
            ),
          ), ///////////////////////////////////////////////......................................
          SizedBox(
              //color: cBlue,
              height: ResponsiveWebSite.isDesktop(context) ? 280 : 240,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, top: 08),
                      child: Container(
                        color: Colors.blue.withOpacity(0.2),
                        height: 35,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              flex: 3,
                              child: SizedBox(
                                height: 35,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFontWidget(
                                    text:
                                        'data.classNameb husdgj kjndck kjsndk sgdb sfhbk sfkkhk',
                                    fontsize: 13,
                                    fontWeight: FontWeight.w600,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  color: screenContainerbackgroundColor,
                                  height: 35,
                                  //   width: 90,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Tooltip(
                                        message: 'Add Exam to this batch year',
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: const Icon(
                                            weight: 50,
                                            Icons.add,
                                            color: themeColorBlue,
                                            size: 18,
                                          ),
                                        ),
                                      ), ///////////////////////////................add
                                      Container(
                                        width: 1,
                                        color: cWhite,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          editFunctionOfExam(context);
                                        },
                                        child: const Icon(
                                          Icons.edit,
                                          color: cgreen,
                                          size: 18,
                                        ),
                                      ), ///////////////////////////...edit
                                      Container(
                                        width: 1,
                                        color: cWhite,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.delete,
                                          color: cred,
                                          size: 18,
                                        ),
                                      ), /////////////////////////delete
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 1,
                      ),
                  itemCount: 10)
              //
              ),
        ],
      ));
}
