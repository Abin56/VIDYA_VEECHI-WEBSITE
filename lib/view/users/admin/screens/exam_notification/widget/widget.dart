import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/controller/exam_notification/exam_notification.dart';
import 'package:vidyaveechi_website/controller/subject_controller/subject_controller.dart';
import 'package:vidyaveechi_website/model/exam_time_table_model/exam_time_table_model.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/constant/constant.validate.dart';
import 'package:vidyaveechi_website/view/drop_down/class_wise_subject.dart';
import 'package:vidyaveechi_website/view/drop_down/select_class.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/widgets/progess_button/progress_button.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/textformFiledContainer/textformFiledBlueContainer.dart';

class ExamTimeTableAddWidget extends StatelessWidget {
  ExamTimeTableAddWidget({
    super.key,
    required this.size,
    required this.getExamNotificationCtr,
  });

  final Size size;
  final GlobalKey<FormState> fkey = GlobalKey<FormState>();
  final ExamNotificationController getExamNotificationCtr;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding:
          EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
      content: Container(
        decoration: const BoxDecoration(color: cWhite),
        width: size.width * 0.7,
        height: size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: fkey,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  color: screenContainerbackgroundColor,
                  child: const Center(
                    child:
                        TextFontWidget(text: 'Create Time Table', fontsize: 25),
                  ),
                ),
                sh10,
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TextFontWidget(
                                  text: 'Select Class *', fontsize: 12.5),
                              SelectClassDropDown(),
                              sh10,
                              const TextFontWidget(
                                  text: 'Select Subject *', fontsize: 12.5),
                              SelectClassWiseSubjectDropDown(),
                              sh10,
                              GestureDetector(
                                onTap: () {
                                  getExamNotificationCtr.setStartDate(context);
                                },
                                child: AbsorbPointer(
                                  absorbing: true,
                                  child: TextFormFiledBlueContainerWidget(
                                    hintText: "  Date",
                                    title: 'Select Date🗓️ ',
                                    validator: checkFieldEmpty,
                                    // readOnly: true,
                                    controller:
                                        getExamNotificationCtr.startDateCtr,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  getExamNotificationCtr.setStartTime(context);
                                },
                                child: AbsorbPointer(
                                  absorbing: true,
                                  child: Obx(
                                    () {
                                      getExamNotificationCtr.startTimeCtr.text =
                                          getExamNotificationCtr.startTime.value
                                              .format(context);
                                      return TextFormFiledBlueContainerWidget(
                                        hintText: "  Start Time",
                                        title: 'Select Start Time🗓️ ',
                                        validator: checkFieldEmpty,
                                        // readOnly: true,
                                        controller:
                                            getExamNotificationCtr.startTimeCtr,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  getExamNotificationCtr.setEndTime(context);
                                },
                                child: AbsorbPointer(
                                  absorbing: true,
                                  child: Obx(
                                    () {
                                      getExamNotificationCtr.endTimeCtr.text =
                                          getExamNotificationCtr.endTime.value
                                              .format(context);
                                      return TextFormFiledBlueContainerWidget(
                                        hintText: "  End Time",
                                        title: 'Select End Time🗓️ ',
                                        validator: checkFieldEmpty,
                                        // readOnly: true,
                                        controller:
                                            getExamNotificationCtr.endTimeCtr,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: SizedBox(
                                      // color: Colors.amber,
                                      height: 40,
                                      width: 180,
                                      child: Obx(() => ProgressButtonWidget(
                                          function: () async {
                                            if (fkey.currentState?.validate() ??
                                                false) {
                                              getExamNotificationCtr
                                                  .addExamTimeTable(
                                                      subject: Get.find<
                                                              SubjectController>()
                                                          .subjectName
                                                          .value,
                                                      date:
                                                          getExamNotificationCtr
                                                              .startDateCtr
                                                              .text,
                                                      startTime:
                                                          getExamNotificationCtr
                                                              .startTimeCtr
                                                              .text,
                                                      endTime:
                                                          getExamNotificationCtr
                                                              .endTimeCtr.text);
                                            }
                                          },
                                          buttonstate:
                                              Get.find<ClassController>()
                                                  .buttonstate
                                                  .value,
                                          text: 'Add Exam')),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      sw10,
                      const VerticalDivider(),
                      sw10,
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: themeColorBlue,
                                  border: Border.all(
                                      color: cWhite.withOpacity(0.2))),
                              height: 40,
                              width: double.infinity,
                              child: const Center(
                                child: TextFontWidget(
                                  text: 'Time Table List',
                                  fontsize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: cWhite,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Obx(
                                () {
                                  return StreamBuilder(
                                    stream: getExamNotificationCtr
                                        .firebaseClassPath
                                        .doc(Get.find<ClassController>()
                                            .classDocID
                                            .value)
                                        .collection('ExamTimeTable')
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return const Center(
                                            child: CircularProgressIndicator());
                                      } else if (snapshot.data!.docs.isEmpty) {
                                        return const Center(
                                          child: TextFontWidget(
                                              text: "No data", fontsize: 16),
                                        );
                                      } else if (!snapshot.hasData) {
                                        return const Center(
                                          child: TextFontWidget(
                                              text: "Please select class",
                                              fontsize: 16),
                                        );
                                      } else {
                                        return ListView.separated(
                                          itemBuilder: (context, index) {
                                            final examData =
                                                ExamTimeTableModel.fromMap(
                                                    snapshot.data!.docs[index]
                                                        .data());
                                            return ListTile(
                                              title: TextFontWidget(
                                                  text: examData.subject,
                                                  fontsize: 16),
                                              subtitle: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  TextFontWidget(
                                                      text: examData.date,
                                                      fontsize: 12.5),
                                                  TextFontWidget(
                                                      text:
                                                          'Start time : ${examData.startTime} End time : ${examData.endTime}',
                                                      fontsize: 12.5),
                                                ],
                                              ),
                                              trailing: PopupMenuButton(
                                                tooltip: "Filter Option",
                                                position:
                                                    PopupMenuPosition.under,
                                                itemBuilder: (context) {
                                                  return [
                                                    PopupMenuItem(
                                                        onTap: () {
                                                          showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return EditExamTimeTableAddWidget(
                                                                examData:
                                                                    examData,
                                                                size: size,
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child:
                                                            const TextFontWidget(
                                                          text: "Edit",
                                                          fontsize: 16,
                                                        )),
                                                    PopupMenuItem(
                                                        onTap: () {
                                                          showDialogWidget(
                                                              context: context,
                                                              title:
                                                                  'Are you sure to Delete',
                                                              function: () {
                                                                getExamNotificationCtr
                                                                    .deleteExamTibleTable(
                                                                        docId: examData
                                                                            .docId);
                                                              });
                                                        },
                                                        child:
                                                            const TextFontWidget(
                                                          text: " Delete",
                                                          fontsize: 16,
                                                        )),
                                                  ];
                                                },
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return const Divider();
                                          },
                                          itemCount: snapshot.data!.docs.length,
                                        );
                                      }
                                    },
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditExamTimeTableAddWidget extends StatelessWidget {
  EditExamTimeTableAddWidget({
    super.key,
    required this.size,
    required this.examData,
    // required this.getExamNotificationCtr,
  });

  final Size size;
  final GlobalKey<FormState> fkey = GlobalKey<FormState>();
  final ExamTimeTableModel examData;
  // final ExamNotificationController getExamNotificationCtr;
  final ExamNotificationController getExamNotificationCtr =
      ExamNotificationController();

  @override
  Widget build(BuildContext context) {
    print(examData.startTime);
    getExamNotificationCtr.startDateCtr.text = examData.date;
    getExamNotificationCtr.startTimeCtr.text = examData.startTime;
    getExamNotificationCtr.endTimeCtr.text = examData.endTime;

    return AlertDialog(
      contentPadding:
          EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
      content: Container(
        decoration: const BoxDecoration(color: cWhite),
        width: size.width * 0.3,
        height: size.height * 0.7,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: fkey,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  color: screenContainerbackgroundColor,
                  child: const Center(
                    child:
                        TextFontWidget(text: 'Edit Time Table', fontsize: 25),
                  ),
                ),
                sh10,
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          getExamNotificationCtr.setStartDate(context);
                        },
                        child: AbsorbPointer(
                          absorbing: true,
                          child: TextFormFiledBlueContainerWidget(
                            hintText: "  Date",
                            title: 'Select Date🗓️ ',
                            validator: checkFieldEmpty,
                            // readOnly: true,
                            controller: getExamNotificationCtr.startDateCtr,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          getExamNotificationCtr.setStartTime(context);
                        },
                        child: AbsorbPointer(
                          absorbing: true,
                          child: Obx(
                            () {
                              getExamNotificationCtr.startTimeCtr.text =
                                  getExamNotificationCtr.startTime.value
                                      .format(context);
                              return TextFormFiledBlueContainerWidget(
                                hintText: "  Start Time",
                                title: 'Select Start Time🗓️ ',
                                validator: checkFieldEmpty,
                                // readOnly: true,
                                controller: getExamNotificationCtr.startTimeCtr,
                              );
                            },
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          getExamNotificationCtr.setEndTime(context);
                        },
                        child: AbsorbPointer(
                          absorbing: true,
                          child: Obx(
                            () {
                              getExamNotificationCtr.endTimeCtr.text =
                                  getExamNotificationCtr.endTime.value
                                      .format(context);
                              return TextFormFiledBlueContainerWidget(
                                hintText: "  End Time",
                                title: 'Select End Time🗓️ ',
                                validator: checkFieldEmpty,
                                // readOnly: true,
                                controller: getExamNotificationCtr.endTimeCtr,
                              );
                            },
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: SizedBox(
                              // color: Colors.amber,
                              height: 40,
                              width: 180,
                              child: Obx(() => ProgressButtonWidget(
                                  function: () async {
                                    if (fkey.currentState?.validate() ??
                                        false) {
                                      getExamNotificationCtr.editExamTimeTable(
                                          docId: examData.docId,
                                          date: getExamNotificationCtr
                                              .startDateCtr.text,
                                          startTime: getExamNotificationCtr
                                              .startTimeCtr.text,
                                          endTime: getExamNotificationCtr
                                              .endTimeCtr.text);
                                    }
                                  },
                                  buttonstate: Get.find<ClassController>()
                                      .buttonstate
                                      .value,
                                  text: 'Update Exam')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
