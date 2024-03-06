import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/add_exam_notification.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_functions_mobile/public_level.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_functions_mobile/school_level.dart';
import 'package:vidyaveechi_website/view/widgets/responsive/responsive.dart';

class ExamNotification extends StatelessWidget {
  ExamNotification({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveWebSite.isMobile(context)
          ? Column(
              children: [
                const TextFontWidget(
                  text: "Examinations",
                  fontsize: 15,
                  fontWeight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: () {
                      addExamFunction(context);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: cWhite,
                          border: Border(left: BorderSide(width: 0.2)),
                          boxShadow: [BoxShadow(blurRadius: 1)]),
                      child: const Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notification_add),
                          TextFontWidget(
                            text: "ADD EXAM NOTIFICATION",
                            fontsize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        publicLevelExamListing(context);
                      },
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: cWhite,
                            border: Border(left: BorderSide(width: 0.2)),
                            boxShadow: [BoxShadow(blurRadius: 1,offset: Offset(2, 2),spreadRadius: 4,)]),
                        child: const Center(
                          child: TextFontWidget(
                            text: "PUBLIC LEVEL EXAMS",
                            fontsize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                        schoolLevelExamListing(context);
                      },
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: cWhite,
                            border: Border(left: BorderSide(width: 0.2)),
                            boxShadow: [BoxShadow(blurRadius: 1)]),
                        child: const Center(
                          child: TextFontWidget(
                            text: "SCHOOL LEVEL EXAMS",
                            fontsize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ) ////////////////////////////////////////////////////mobile
          : Column(
              children: [
                const TextFontWidget(
                  text: "Examinations",
                  fontsize: 17,
                  fontWeight: FontWeight.bold,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 700,
                          color: cWhite,
                          child: Center(
                              child: Column(
                            children: [
                              const TextFontWidget(
                                text: "ADD NEW EXAM NOTIFICATION",
                                fontsize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(
                                width: 400,
                                height: 350,
                                child: Form(
                                  key: formKey,
                                  child: ListView(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            const Divider(),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: DropdownSearch<String>(
                                                selectedItem:
                                                    'Select Exam Level',
                                                validator: (v) => v == null
                                                    ? "required field"
                                                    : null,
                                                items: const [
                                                  "School Level",
                                                  "Public Level",
                                                ],
                                                // onChanged: (value) {
                                                //   setState(() {
                                                //     selectedLeaveType =
                                                //         value!;
                                                //   });
                                                // },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: checkFieldEmpty,
                                          // controller: name,
                                          decoration: InputDecoration(
                                              border:
                                                  const OutlineInputBorder(),
                                              labelText: 'Name of Examination',
                                              labelStyle:
                                                  GoogleFonts.poppins()),
                                          style: GoogleFonts.poppins(),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: checkFieldEmpty,
                                          // controller:
                                          //     _applyFromDateController,
                                          readOnly: true,
                                          onTap: () {
                                            // _selectFromDate(context),
                                          },
                                          decoration: const InputDecoration(
                                            labelText: 'From',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: checkFieldEmpty,
                                          // controller:
                                          //     _applyTODateController,
                                          readOnly: true,
                                          onTap: () {
                                            // _selectToDate(context),
                                          },
                                          decoration: const InputDecoration(
                                            labelText: 'To',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              MaterialButton(
                                color: themeColorBlue,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: MaterialButton(
                                  color: themeColorBlue,
                                  onPressed: () async {
                                    if (formKey.currentState!.validate()) {
                                      // await widget.addExamController
                                      // .addExamtoSever(
                                      //     context,
                                      //     '',
                                      //     name.text.trim(),
                                      //     selectedLeaveType,
                                      //     _applyFromDateController
                                      //         .text
                                      //         .trim(),
                                      //     _applyTODateController
                                      //         .text
                                      //         .trim(),
                                      //     DateTime.now()
                                      //         .toString());

                                      //         clearnotFunction();
                                    }
                                  },
                                  child: const Text(
                                    'Add',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )),
                        )), ///////////////////////////////////////////
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 700,
                          decoration: const BoxDecoration(
                              color: cWhite,
                              border: Border(left: BorderSide(width: 0.2))),
                          child: Column(
                            children: [
                              const TextFontWidget(
                                text: "SCHOOL LEVEL EXAMS",
                                fontsize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 10, right: 10),
                                child: Divider(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 11, right: 11, top: 8, bottom: 8),
                                child: SizedBox(
                                  height: 550,
                                  child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                              color: cWhite,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 1,
                                                ),
                                              ]),
                                          child: const Column(
                                            children: [
                                              TextFontWidget(
                                                  text: "Onam Exam",
                                                  fontsize: 13),
                                              TextFontWidget(
                                                  text: "23/05/2023",
                                                  fontsize: 12)
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: 10,
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      height: 1,
                                    ),
                                    // child:
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )), //////////////////////////////////////////////////////
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 700,
                          decoration: const BoxDecoration(
                              color: cWhite,
                              border: Border(left: BorderSide(width: 0.2))),
                          child: Column(
                            children: [
                              const TextFontWidget(
                                text: "PUBLIC LEVEL EXAMS",
                                fontsize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 8, left: 10, right: 10),
                                child: Divider(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 11, right: 11, top: 8, bottom: 8),
                                child: SizedBox(
                                  height: 550,
                                  child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 50,
                                          width: double.infinity,
                                          decoration: const BoxDecoration(
                                              color: cWhite,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 1,
                                                ),
                                              ]),
                                          child: const Column(
                                            children: [
                                              TextFontWidget(
                                                  text: "Onam Exam",
                                                  fontsize: 13),
                                              TextFontWidget(
                                                  text: "23/05/2023",
                                                  fontsize: 12)
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: 10,
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      height: 1,
                                    ),
                                    // child:
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )), //////////////////////////////////////////////
                  ],
                ),
              ],
            ),
    );
  }
}
