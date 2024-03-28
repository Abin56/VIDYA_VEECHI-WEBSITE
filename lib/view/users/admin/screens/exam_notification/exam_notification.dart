import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/create_exam.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/exam_notification/exam_functions_n_list/data_list_exam.dart';
import 'package:vidyaveechi_website/view/widgets/button_container/button_container.dart';
import 'package:vidyaveechi_website/view/widgets/data_list_widgets/tableheaderWidget.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';

class AllExamNotificationListView extends StatelessWidget {
  const AllExamNotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: screenContainerbackgroundColor,
        height: 700,
        width: 1150,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 25),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFontWidget(
                    text: 'All Exams List',
                    fontsize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 05),
                      child: RouteSelectedTextContainer(title: 'All Exams'),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, bottom: 5),
                      child: GestureDetector(
                        onTap: () {
                          createExamNotificationFunction(context);
                        },
                        child: ButtonContainerWidget(
                            curving: 30,
                            colorindex: 0,
                            height: 40,
                            width: 180,
                            child: const Center(
                              child: TextFontWidget(
                                text: 'Create / E D I T',
                                fontsize: 14,
                                fontWeight: FontWeight.bold,
                                color: cWhite,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: cWhite,
                  height: 550,
                  width: 1100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Column(
                      children: [
                        Container(
                          color: cWhite,
                          height: 50,
                          child: const Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: TableHeaderWidget(headerTitle: 'No')),
                              SizedBox(
                                width: 01,
                              ),
                              Expanded(
                                  flex: 4,
                                  child:
                                      TableHeaderWidget(headerTitle: 'Exam Name')),
                              SizedBox(
                                width: 01,
                              ),
                              Expanded(
                                  flex: 2,
                                  child:
                                      TableHeaderWidget(headerTitle: 'Total Days')),
                              SizedBox(
                                width: 01,
                              ),
                              Expanded(
                                  flex: 3,
                                  child:
                                      TableHeaderWidget(headerTitle: 'Starting')),
                              SizedBox(
                                width: 01,
                              ),
                              Expanded(
                                  flex: 1,
                                  child: TableHeaderWidget(headerTitle: 'Ending')),
                              SizedBox(
                                width: 01,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                              color: cWhite,
                              width: 1200,
                              child:
                                  // StreamBuilder(
                                  //   stream: server
                                  //       .collection('SchoolListCollection')
                                  //       .doc(UserCredentialsController.schoolId)
                                  //       .collection(UserCredentialsController.batchId!)
                                  //       .doc(UserCredentialsController.batchId!)
                                  //       .collection('classes')
                                  //       .snapshots(),
                                  //   builder: (context, snaps) {
                                  //     if (snaps.hasData) {
                                  //       if (snaps.data!.docs.isEmpty) {
                                  //         return const Center(
                                  //           child: TextFontWidget(
                                  //               text: "No exam found, add new exams",
                                  //               fontsize: 12.5),
                                  //         );
                                  //       } else {
                                  //         return
                                  Padding(
                                padding: const EdgeInsets.only(right: 1, left: 1),
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      // final data = ClassModel.fromMap(
                                      //     snaps.data!.docs[index].data());
                                      return
                                          // GestureDetector(
                                          //   onTap: () => classController
                                          //       .ontapClass.value = true,
                                          //   child:
                                          ExamNotificationDataListWidget(
                                        // data: data,
                                        index: index,
                                        //   ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(
                                        height: 02,
                                      );
                                    },
                                    itemCount: 10),
                              )
                              //       }//
                              //     } else {
                              //       return circularProgressIndicator;
                              //     }
                              //   },
                              // ),//
                              ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //  ),
    );
  }
}
