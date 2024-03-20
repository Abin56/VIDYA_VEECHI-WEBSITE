import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vidyaveechi_website/controller/class_controller/class_controller.dart';
import 'package:vidyaveechi_website/view/colors/colors.dart';
import 'package:vidyaveechi_website/view/fonts/text_widget.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/class_details/attendence_history_status/attendence_history_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/class_details/exam_history_status/exam_history_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/class_details/fess_history_status/fess_history_status.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/class/subject/create_subject.dart';
import 'package:vidyaveechi_website/view/users/admin/screens/students/student_details/widgets/detail_tileContainer.dart';
import 'package:vidyaveechi_website/view/widgets/blue_Container_widget/blue_Container_widget.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/routeSelectedTextContainer.dart';
import 'package:vidyaveechi_website/view/widgets/routeSelectedTextContainer/route_NonSelectedContainer.dart';

class ClassDetailsContainer extends StatelessWidget {
  final ClassController classController = Get.put(ClassController());
  ClassDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final data = classController.classModelData.value;
    return DefaultTabController(
      length: 3,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          color: screenContainerbackgroundColor,
          height: 1000,
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: TextFontWidget(
                  text: 'Class Details',
                  fontsize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Container(
                  color: cWhite,
                  height: 260,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: double.infinity,
                        color: Colors.white10,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 08,
                                        right: 05,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          classController.ontapClass.value =
                                              false;
                                        },
                                        child:
                                            const RouteNonSelectedTextContainer(
                                                title: 'Home'),
                                      ),
                                    ),
                                    const RouteSelectedTextContainer(
                                        width: 140, title: 'Class Deatils'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: themeColorBlue,
                        height: 02,
                      ),
                      Expanded(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 05, left: 10),
                              child: CircleAvatar(
                                radius: 80,
                                backgroundColor: Colors.grey,
                                child: CircleAvatar(
                                  radius: 78,
                                  backgroundImage:
                                      AssetImage('webassets/png/roll-call.png'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100,
                                      color: themeColorBlue.withOpacity(0.1),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, top: 10),
                                            child: TextFontWidget(
                                              text: "Class Name",
                                              fontsize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 10),
                                            child: SizedBox(
                                              width: 500,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  StudentDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Total Students',
                                                    subtitle: '50',
                                                  ),
                                                  StudentDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Presnt Today',
                                                    subtitle: "49",
                                                  ),
                                                  //         // const StudentDetailTileContainer(
                                                  //         //   flex: 1,
                                                  //         //   title: 'Batch Year',
                                                  //         //   subtitle: 'March 2023',
                                                  //         // ),
                                                  StudentDetailTileContainer(
                                                    flex: 1,
                                                    title: 'Absent Today',
                                                    subtitle: '1',
                                                  ),
                                                  //         StudentDetailTileContainer(
                                                  //           flex: 1,
                                                  //           title: 'Join Date',
                                                  //           subtitle:
                                                  //               stringTimeToDateConvert(
                                                  //                   data.createDate),
                                                  //         ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    // flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(Icons.person),
                                              const TextFontWidget(
                                                text: " Reshma Suresh ",
                                                fontsize: 12,
                                                color: themeColorBlue,
                                              ),
                                              const Spacer(),
                                              // GestureDetector(
                                              //   child: BlueContainerWidget(
                                              //     color: themeColorBlue,
                                              //     fontSize: 12,
                                              //     title: '🔗 Class Access',
                                              //     width: 120,
                                              //     fontWeight: FontWeight.w500,
                                              //   ),
                                              // ),
                                              // const SizedBox(
                                              //   width: 10,
                                              // ),
                                              GestureDetector(
                                                onTap: () =>
                                                    createSubjectFunction(
                                                        context, data!.docid),
                                                child: BlueContainerWidget(
                                                  color: themeColorBlue,
                                                  fontSize: 12,
                                                  title: '⚙️ Add Subjects',
                                                  width: 120,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Row(
                                            children: [
                                              Icon(Icons.call),
                                              TextFontWidget(
                                                text: "9876456788",
                                                fontsize: 12,
                                                color: themeColorBlue,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      color: cWhite,
                      height: 40,
                      child: const TabBar(
                        indicatorColor: cWhite,
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        labelColor: themeColorBlue,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                        tabs: [
                          Tab(
                            text: 'FEES',
                          ),
                          Tab(
                            text: 'ATTENDANCE',
                          ),
                          Tab(
                            text: 'EXAM ',
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Container(
                  width: double.infinity,
                  color: themeColorBlue,
                  height: 02,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
                child: Container(
                  height: 600,
                  color: cWhite,
                  // color: Colors.amber,

                  // height: 300,
                  child: const TabBarView(children: [
                    FeesHistory(), //........................ Student FEES
                    AttendenceHistory(), //.......................... Student Attendence
                    ExamHistory() //............................ Student Exam History
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
