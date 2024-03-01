import 'package:awesome_side_sheet/Enums/sheet_position.dart';
import 'package:awesome_side_sheet/side_sheet.dart';
import 'package:flutter/material.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

// addSubjectFunction(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//        backgroundColor: const Color.fromARGB(255, 243, 242, 242),
//         title: const Row(
//           children: [
//             BackButton(),
//             TextFontWidget(
//               text: "Add New Subject",
//               fontsize: 15,
//               fontWeight: FontWeight.w500,
//             ),
//           ],
//         ),
//         content: 
//         actions: const [],
//       );
//     },
//   );
// }


addSubjectFunction(BuildContext context){
aweSideSheet(context: context, 
sheetPosition:  SheetPosition.right,
backgroundColor: cWhite,
cancelActionText: '',
confirmActionText: '',
title: 'Add New Subject',
body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10, top: 0),
                    child: TextFormFiledBlueContainerWidget(
                      hintText: "Enter Subject Name",
                      title: 'Subject Name',
                      validator: checkFieldEmpty,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: cWhite,
                      height: 350,
                      width: 500,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 1, right: 1, top: 5),
                            child: Container(
                              height: 35,
                              width: 110,
                              decoration: const BoxDecoration(
                                  color: screenContainerbackgroundColor),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: TextFontWidget(
                                      text: "Malayalam",
                                      fontsize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Container(
                                    color: screenContainerbackgroundColor,
                                    height: 35,
                                    width: 170,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        TextFontWidget(
                                          text: "Add Subject",
                                          fontsize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Icon(Icons.edit, size: 17),
                                        Icon(
                                          Icons.delete,
                                          size: 17,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 10,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 1,
                        ),
                        // child:
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: themeColorBlue,
                          border: Border.all(color: themeColorBlue),
                          borderRadius: BorderRadius.circular(05)),
                      child: const Center(
                        child: TextFontWidget(
                          text: "Create Subject",
                          fontsize: 14,
                          // fontWeight: FontWeight.w600,
                          color: cWhite,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ), );
}